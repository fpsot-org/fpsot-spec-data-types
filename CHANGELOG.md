# Changelog

All notable changes to this specification are listed here.
The format follows [Keep a Changelog 1.1.0](https://keepachangelog.com/en/1.1.0/),
and versions follow [Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.1.0] - 2026-11-04

### Added

- Text rules DAT-001 to DAT-006: UTF-8, Normalization Form C, I-JSON, multilingual text keyed by language tag, with English and French for FPSOT text.
- Date and time rules DAT-010 to DAT-016: instants in UTC with Z, fractional and leap seconds, no epoch numbers, dates, local times with a time zone, times of day.
- Duration and interval rules DAT-020 to DAT-024.
- Time zone rules DAT-030 to DAT-034: IANA names and fixed database releases.
- Number rules DAT-040 to DAT-043: large integers and exact decimals as strings, units.
- Money rules DAT-050 to DAT-055: amount and currency object, minor units, rounding, no binary floating point.
- Identifier rules DAT-060 to DAT-067: opaque strings, UUID version 7, identifiers from other bodies.
- Boolean and code value rules DAT-070 to DAT-073.
- Coordinate rules DAT-080 to DAT-082: WGS 84 and GeoJSON.
- LinkML model `model/data-types.yaml`, with examples and a test script.
- Comparison data for eight topics, with Canada and Québec rows.
- How-to guide on modelling a record with these types.

[Unreleased]: https://github.com/fpsot-org/fpsot-spec-data-types/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/fpsot-org/fpsot-spec-data-types/releases/tag/v0.1.0
