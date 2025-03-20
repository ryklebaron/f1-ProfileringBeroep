
# Installeren van Latex

Op debian en vrienden kan dit met

```command
sudo apt install texlive-full
```

Bij gebruik van Visual Studio Code kan de extensie `Latex Workshop` worden gebruikt. Tip: met `Alt+Z` / `Option+Z` toggle je soft-wrap.


# Genereren van een pdf

## Met de Makefile

Dit is de meest eenvoudige en robuuste manier. Voor het bouwen van een latex project zijn namelijk soms meerdere passes nodig, en de `Makefile` zorgt dat dat via `latexmk` op de juiste manier maar niet onnodig gebeurt.

**Bouwen**

```command
make
```

**Opschonen indien nodig**

```command
make clean
```

## Handmatig

Genereren kan met

```command
pdflatex example
```

Het compileren van de bibliografie is na een wijziging van `bibliograpy.bib` het volgende commando

```command
biber example
```

Vervolgens kan nog 1x of 2x het commando `pdflatex example` worden gedraaid. Sommige warnings geven aan dat er nog een 2e run nodig is. In het bijzonder wordt de inhoudsopgave pas bij de 2e run geupdate.

## Met de vscode extensie

Zie de `TeX` sidebar voor verschillende build opties. De extensie kan ook een live preview te updaten bij elke save. TIP: Zet ook `SyncTeX from cursor` aan onder `Navigate, select and edit` in de `TeX` sidebar.

# Andere nuttige commando's

Documentatie van LateX packages kan worden opgevraagd met `texdoc <package>`. Bijvoorbeeld:

```command
texdoc memoir
```# windesheim
# f1-ProfileringBeroep
