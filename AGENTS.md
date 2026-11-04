# Instructions for agents

This repository holds the FPSOT data types specification: how FPSOT systems store and exchange text, dates, times, durations, time zones, numbers, money, identifiers, booleans, code values and coordinates.

- The normative text is in `spec/en/` and `spec/fr/`. Every rule has an ID such as `DAT-001`.
- Follow `skill/SKILL.md` when you design a data model or a JSON payload in any FPSOT project. The spec text wins on any difference.
- `model/data-types.yaml` holds the LinkML types. Run `model/test-model.sh` after you change it.
- Every page exists in English and in French, with the same file name and the same IDs.
- Terms and abbreviations come from the term base of `fpsot-spec-writing`. Add a missing term there first.
- This is a layer 1 specification. It may refer to the naming and internationalization specifications, never to a higher layer.
- Do not copy text from outside standards. Summarise them in your own words and cite the exact version.
- Commits follow Conventional Commits and are signed. Pull requests are squash-merged.
