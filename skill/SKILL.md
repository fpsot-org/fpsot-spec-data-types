---
name: fpsot-data-types
description: Data type rules for FPSOT systems. Use when designing a data model, a JSON payload, a database column or a LinkML schema that holds text, dates, times, durations, time zones, numbers, money, identifiers, booleans, code values or coordinates.
---

# FPSOT data types

Summary of the FPSOT data types specification. It adds no rules of its own.
The spec text in `spec/` wins on any difference. Each line cites its requirement ID.
The LinkML types are in `model/data-types.yaml`.

Each line keeps the strength of its rule: "must" and "must not" are MUST and MUST NOT, "should" and "should not" are SHOULD and SHOULD NOT, "may" is MAY.

## Text

- Text must be UTF-8, with no byte order mark (DAT-001). It must be in Unicode NFC before it is stored (DAT-002). Comparing and searching text is in the FPSOT internationalization specification.
- JSON must follow I-JSON, RFC 7493: no duplicate member names, no unpaired surrogates (DAT-003).
- Multilingual text must be an object keyed by language tag: `{"en": "…", "fr": "…"}` (DAT-004). FPSOT text must have both `en` and `fr` (DAT-005). A member must not be an empty string; leave a missing language out (DAT-006).

## Dates, times, durations, time zones

- An instant must be RFC 3339 in UTC, with capital `T` and `Z`: `2026-11-04T15:30:00Z` (DAT-010). Readers must accept 0 to 9 fractional digits (DAT-011) and a seconds value of 60 (DAT-012).
- Exchanged data must not hold a date or instant as a number, such as epoch seconds (DAT-013).
- A date must be a full date such as `2026-11-04`, never an instant at midnight (DAT-014).
- When the local clock time matters, a system must store the local date and time and the zone: `{"localDateTime": "2027-03-14T09:00:00", "timeZone": "America/Toronto"}` (DAT-015).
- A time of day must be `HH:MM:SS`, 24-hour, such as `08:30:00` (DAT-016).
- Writers should use the RFC 3339 appendix A duration form, such as `PT30M`: weeks alone, units in order with no gap, no fractions (DAT-020). Readers must accept any ISO 8601 duration without fractions, such as `P1Y1D` or `PT1H1S` (DAT-024).
- Exact elapsed time should use hours, minutes and seconds only (DAT-021). A duration should not be a bare number (DAT-022).
- An interval must be `{"start": …, "end": …}`, end excluded, an open end left out (DAT-023).
- A time zone must be an IANA name, never an offset or abbreviation (DAT-030). Writers should use canonical names (DAT-031). Readers must accept link names (DAT-032). A system must fix and record the tz database release (DAT-033), and should update before changes take effect (DAT-034).

## Numbers and money

- Integers beyond ±(2^53 − 1) must be strings of digits (DAT-040). Exact decimals must be strings such as `"12.50"`, with no exponent, plus sign or separators (DAT-041). Measured values may be JSON numbers (DAT-042). The schema should state the unit of a quantity (DAT-043).
- Money must be `{"amount": "12.50", "currency": "CAD"}` (DAT-050). The currency must be the ISO 4217 alphabetic code in capitals (DAT-051). The amount must be a decimal string, never a JSON number (DAT-052).
- A payable amount must have the minor-unit decimals of its currency: CAD 2, JPY 0 (DAT-053). A system that rounds must state the method and the step (DAT-054). A system must not compute money in binary floating point (DAT-055).

## Identifiers

- Identifiers must be strings (DAT-060). Readers must treat them as opaque (DAT-061). A created identifier must not hold personal, place or business information (DAT-062).
- New identifiers should be UUID version 7 (DAT-063). They must be version 4 when the creation time is sensitive (DAT-064).
- UUIDs must be written in lower-case canonical form (DAT-065). Readers should accept any case and convert to lower case (DAT-067).
- An identifier from another body must stay a string in the issuer's exact form (DAT-066).

## Booleans and code values

- Booleans must be `true` or `false` only (DAT-070). A field that has or may gain a third state should be a code value (DAT-071).
- Code values must be lower-case kebab-case strings, never numbers (DAT-072). An interface must show people the multilingual label, not the code (DAT-073).

## Coordinates

- Coordinates must be WGS 84 decimal degrees, longitude first (DAT-080). Shapes must be GeoJSON geometry, with no `crs` member (DAT-081). A coordinate should not have more than six decimal places (DAT-082).
