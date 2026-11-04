---
name: fpsot-data-types
description: Data type rules for FPSOT systems. Use when designing a data model, a JSON payload, a database column or a LinkML schema that holds text, dates, times, durations, time zones, numbers, money, identifiers, booleans, code values or coordinates.
---

# FPSOT data types

Summary of the FPSOT data types specification. It adds no rules of its own.
The spec text in `spec/` wins on any difference. Each line cites its requirement ID.
The LinkML types are in `model/data-types.yaml`.

## Text

- UTF-8, no byte order mark (DAT-001). Normalize to Unicode NFC before storing or comparing (DAT-002).
- JSON follows I-JSON, RFC 7493: no duplicate member names, no lone surrogates (DAT-003).
- Multilingual text is an object keyed by language tag: `{"en": "…", "fr": "…"}` (DAT-004). FPSOT text has both `en` and `fr` (DAT-005). Leave a missing language out, never an empty string (DAT-006).

## Dates, times, durations, time zones

- Instant: RFC 3339 in UTC, capital `T` and `Z`: `2026-11-04T15:30:00Z` (DAT-010). Accept 0 to 9 fractional digits (DAT-011) and a seconds value of 60 (DAT-012).
- Never a date or instant as an epoch number (DAT-013).
- Date: `2026-11-04`, never midnight UTC (DAT-014).
- When the local clock time matters, store `{"localDateTime": "2027-03-14T09:00:00", "timeZone": "America/Toronto"}` (DAT-015).
- Time of day: `08:30:00`, 24-hour (DAT-016).
- Duration: ISO 8601 within RFC 3339 appendix A, such as `PT30M`, weeks alone, units in order, no fractions (DAT-020). Exact elapsed time uses hours, minutes, seconds only (DAT-021). Avoid bare numbers (DAT-022).
- Interval: `{"start": …, "end": …}`, end excluded, open end left out (DAT-023).
- Time zone: IANA name, never an offset or abbreviation (DAT-030). Write canonical names (DAT-031), accept link names (DAT-032). Fix and record the tz database release (DAT-033), and update before changes take effect (DAT-034).

## Numbers and money

- Integers beyond ±(2^53 − 1) are strings (DAT-040). Exact decimals are strings such as `"12.50"`: no exponent, plus sign or separators (DAT-041). Measured values may be JSON numbers (DAT-042). State the unit (DAT-043).
- Money: `{"amount": "12.50", "currency": "CAD"}` (DAT-050). Currency is the ISO 4217 alphabetic code in capitals (DAT-051). Amount is a decimal string, never a JSON number (DAT-052).
- Payable amounts have the minor-unit decimals of the currency: CAD 2, JPY 0 (DAT-053). State the rounding method and step (DAT-054). Never compute money in binary floating point (DAT-055).

## Identifiers

- Always strings (DAT-060). Opaque to readers (DAT-061). No personal, place or business information inside (DAT-062).
- New identifiers: UUID version 7 (DAT-063), or version 4 when the creation time is sensitive (DAT-064). Lower-case canonical form (DAT-065).
- Identifiers from other bodies stay strings in the issuer's exact form (DAT-066).

## Booleans and code values

- Booleans are `true` or `false` only (DAT-070). Use a code value when a field has or may gain a third state (DAT-071).
- Code values are lower-case kebab-case strings, never numbers (DAT-072). Show people the multilingual label, not the code (DAT-073).

## Coordinates

- WGS 84 decimal degrees, longitude first (DAT-080). GeoJSON geometry, no `crs` member (DAT-081). At most six decimal places (DAT-082).
