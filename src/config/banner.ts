export type DesignVersion = 'V1' | 'V2';

/**
 * Local mirror of the CMS selector `AT.DesignVersion` (empty value falls back to V1).
 * Switch it to 'V2' to preview the single-row design in the Astro fixture.
 */
export const DESIGN_VERSION = 'V1' as DesignVersion;
