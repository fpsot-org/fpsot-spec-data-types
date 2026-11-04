# Terms needed

Entries for the term base of `fpsot-spec-writing` (`termbase/terms.yaml`), in its format.
This specification uses them. Each note says what was checked and what still needs a check.

```yaml
  - id: iana
    kind: abbreviation
    en: {short: "IANA", full: "Internet Assigned Numbers Authority", definition: "The body that keeps the shared registries of Internet names and numbers, including the time zone database."}
    fr: {short: "IANA", full: "Internet Assigned Numbers Authority", definition: "Organisme qui tient les registres communs des noms et des numéros d'Internet, dont la base de données des fuseaux horaires."}
    source: {name: "Grand dictionnaire terminologique", url: "https://vitrinelinguistique.oqlf.gouv.qc.ca/fiche-gdt/fiche/8370486/iana", checked: "2026-11-03"}
  - id: json
    kind: abbreviation
    en: {short: "JSON", full: "JavaScript Object Notation", definition: "A text format for structured data, made of objects, arrays, strings, numbers and literals."}
    fr: {short: "JSON", full: "JavaScript Object Notation", definition: "Format texte de données structurées, fait d'objets, de tableaux, de chaînes, de nombres et de littéraux."}
    source: {name: "RFC 8259", url: "https://www.rfc-editor.org/rfc/rfc8259", checked: "2026-11-03"}
  - id: utc
    kind: abbreviation
    en: {short: "UTC", full: "Coordinated Universal Time", definition: "The world reference time scale, kept by atomic clocks, from which each time zone is an offset."}
    fr: {short: "UTC", full: "temps universel coordonné", definition: "Échelle de temps de référence mondiale, tenue par des horloges atomiques, dont chaque fuseau horaire est un décalage."}
    source: {name: "Grand dictionnaire terminologique", url: "https://vitrinelinguistique.oqlf.gouv.qc.ca/fiche-gdt/fiche/8420561/temps-universel-coordonne", checked: "2026-11-03"}
  - id: utf-8
    kind: abbreviation
    en: {short: "UTF-8", full: "Unicode Transformation Format, 8-bit", definition: "The encoding that writes each Unicode character as one to four bytes."}
    fr: {short: "UTF-8", full: "Unicode Transformation Format, 8-bit", definition: "Codage qui écrit chaque caractère Unicode sur un à quatre octets."}
    source: {name: "RFC 3629", url: "https://www.rfc-editor.org/rfc/rfc3629", checked: "2026-11-03"}
  - id: uuid
    kind: abbreviation
    en: {short: "UUID", full: "universally unique identifier", definition: "A 128-bit identifier that any system can create without a central registry, with a very low chance of a duplicate."}
    fr: {short: "UUID", full: "universally unique identifier", definition: "Identifiant de 128 bits que tout système peut créer sans registre central, avec un risque très faible de doublon."}
    source: {name: "RFC 9562", url: "https://www.rfc-editor.org/rfc/rfc9562", checked: "2026-11-03"}
  - id: wgs-84
    kind: abbreviation
    en: {short: "WGS 84", full: "World Geodetic System 1984", definition: "The global reference system for latitude, longitude and height that GPS and most web maps use."}
    fr: {short: "WGS 84", full: "système géodésique mondial 1984", definition: "Système de référence mondial de la latitude, de la longitude et de l'altitude qu'emploient le GPS et la plupart des cartes Web."}
    source: {name: "Grand dictionnaire terminologique", url: "https://vitrinelinguistique.oqlf.gouv.qc.ca/fiche-gdt/fiche/26518025/systeme-geodesique-mondial", checked: "2026-11-03"}
```

## Notes for the French review

- `iana`: the GDT record (OQLF, 2000) gives IANA with no French full form, so the English name stays. The record is outdated about IANA's role.
- `json`: the GDT has no record for JSON. TERMIUM Plus could not be read. The English name stays, as for `bcp` and `csl`. Check TERMIUM Plus.
- `utc`: the GDT gives temps universel coordonné and says UTC is used in both languages. The GDT also lists TUC.
- `utf-8`: no GDT record. TERMIUM Plus could not be read. The English name stays. Check TERMIUM Plus.
- `uuid`: no GDT record for UUID, "identifiant unique universel" or "identificateur unique universel". The French full form is left in English until a source is found. Check TERMIUM Plus.
- `wgs-84`: the GDT record (WMO, 2011) gives "système géodésique mondial" for WGS, without "1984". The full form "système géodésique mondial 1984" adds the year; confirm it.

Words used in running French text that have no GDT record, to confirm in the review: seconde intercalaire, arrondi « au pair », étiquette de langue, forme de normalisation C, valeur de code.
