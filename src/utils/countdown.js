/**
 * Parse a date string in CMS format
 * Example: "Sep 2, 2025, 12:00:00 AM Central Daylight Time"
 * @param {unknown} str - Date string to parse
 * @returns {Date|null} - Parsed date or null if invalid
 */
export function parseFechaCMS(str) {
	if (typeof str !== 'string' || str.trim() === '') {
		return null;
	}

	const partes = str.trim().match(/^([A-Za-z]+) (\d{1,2}), (\d{4}), (\d{1,2}):(\d{2}):(\d{2}) ([AP]M)(?: .*)?$/);

  if (!partes) {
		return null;
  }

	const [, mesStr, diaRaw, anioRaw, horaRaw, minRaw, segRaw, ampm] = partes;

  const meses = {
    // English
    Jan: 0, Feb: 1, Mar: 2, Apr: 3, May: 4, Jun: 5,
    Jul: 6, Aug: 7, Sep: 8, Oct: 9, Nov: 10, Dec: 11,
    // Spanish
    Ene: 0, Abr: 3, Ago: 7, Set: 8, Dic: 11
  };

  const mes = meses[mesStr.slice(0, 3)];
  if (typeof mes === 'undefined') {
    return null;
  }

	const dia = parseInt(diaRaw, 10);
	const anio = parseInt(anioRaw, 10);
	const min = parseInt(minRaw, 10);
	const seg = parseInt(segRaw, 10);
	const hora12 = parseInt(horaRaw, 10);
	const diasEnMes = new Date(Date.UTC(anio, mes + 1, 0)).getUTCDate();

	if (dia < 1 || dia > diasEnMes || hora12 < 1 || hora12 > 12 || min > 59 || seg > 59) {
		return null;
	}
  
	let hora = hora12;

  if (ampm === 'PM' && hora !== 12) {
    hora += 12;
  }
  if (ampm === 'AM' && hora === 12) {
    hora = 0;
  }

  // Compensate for UTC-5 (CDT) to get the correct UTC time
  const fechaUTC = new Date(Date.UTC(
		anio,
    mes, 
		dia,
    hora + 5,
		min,
		seg
  ));

  return fechaUTC;
}

/**
 * Split a number into two digits
 * @param {number} num - Number to split
 * @returns {Array<string>} - Array with two digit strings
 */
export function splitDigits(num) {
  const str = num.toString().padStart(2, '0');
  return [str[0], str[1]];
}

/**
 * Update countdown display
 * @param {Date} targetDate - Target date for countdown
 * @returns {boolean} - True if countdown should continue, false if finished
 */
export function updateCountdown(targetDate) {
  const now = new Date().getTime();
  const distance = targetDate.getTime() - now;

  if (distance <= 0) {
    // Countdown finished - set all to zero
    document.querySelector('.dia_digito1').textContent = '0';
    document.querySelector('.dia_digito2').textContent = '0';
    document.querySelector('.hora_digito1').textContent = '0';
    document.querySelector('.hora_digito2').textContent = '0';
    document.querySelector('.minuto_digito1').textContent = '0';
    document.querySelector('.minuto_digito2').textContent = '0';
    document.querySelector('.segundo_digito1').textContent = '0';
    document.querySelector('.segundo_digito2').textContent = '0';
    return false;
  }

  // Calculate time units
  const days = Math.floor(distance / (1000 * 60 * 60 * 24));
  const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  const seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Split digits
  const [d0, d1] = splitDigits(days);
  const [h0, h1] = splitDigits(hours);
  const [m0, m1] = splitDigits(minutes);
  const [s0, s1] = splitDigits(seconds);

  // Update DOM
  document.querySelector('.dia_digito1').textContent = d0;
  document.querySelector('.dia_digito2').textContent = d1;
  document.querySelector('.hora_digito1').textContent = h0;
  document.querySelector('.hora_digito2').textContent = h1;
  document.querySelector('.minuto_digito1').textContent = m0;
  document.querySelector('.minuto_digito2').textContent = m1;
  document.querySelector('.segundo_digito1').textContent = s0;
  document.querySelector('.segundo_digito2').textContent = s1;

  return true;
}

/**
 * Start countdown interval
 * @param {Date} targetDate - Target date for countdown
 * @param {Function} onFinish - Optional callback to execute when countdown reaches 0
 * @returns {number|null} - Interval ID that can be used to stop the countdown
 */
export function startCountdown(targetDate, onFinish) {
  // Initial update
  const initialShouldContinue = updateCountdown(targetDate);
  
  // If countdown is already finished, call the callback immediately
  if (!initialShouldContinue && typeof onFinish === 'function') {
    onFinish();
  }

	if (!initialShouldContinue) {
		return null;
	}

  // Start countdown interval
  const intervalId = setInterval(function() {
    const shouldContinue = updateCountdown(targetDate);
    if (!shouldContinue) {
      clearInterval(intervalId);
      // Execute callback when countdown finishes
      if (typeof onFinish === 'function') {
        onFinish();
      }
    }
  }, 1000);
  
  return intervalId;
}
