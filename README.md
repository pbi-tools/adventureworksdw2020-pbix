# Adventure Works DW 2020 - DAX Sample Model - PBIX Sources

The Adventure Works DW 2020 Power BI Desktop sample model is distributed by Microsoft for learning and training purposes. The model is available as a (binary) PBIX file here: <https://github.com/microsoft/powerbi-desktop-samples/tree/main/DAX>. The data sources defined in the file are not publicly accessible. Instead, a user would need to restore a database backup to one of their own SQL servers and adjust the connection settings in the model.

This repo changes the distribution in two ways:

1. The PBIX sources are provided instead of the binary PBIX file
2. The underlying data tables have been extracted into CSV files and made available in a publicly accessible location. The model has been changed to fetch data from that location.

A fully functioning and refreshable PBIT file can be generated from sources in this repo alone using [`pbi-tools`](https://github.com/pbi-tools/pbi-tools).

- Conceptual documentation for the model: <https://aka.ms/dax-docs-samples>

## Generate PBIT file from sources

    pbi-tools compile -folder ./pbix -format PBIT -outPath AdvWorksDW2020.pbit

_Requires `pbi-tools`, [1.0.0-beta.6](https://github.com/pbi-tools/pbi-tools/releases/tag/1.0.0-beta.6) or [later](https://github.com/pbi-tools/pbi-tools/releases/latest) release._
