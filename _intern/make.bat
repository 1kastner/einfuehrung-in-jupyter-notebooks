:: Lösche alte Artefakte

DEL *.aux *.log *.out *.blg *.bbl *.synctex(busy) *.synctex.gz

:: Führe sämtliche Schritte durch, um die PDF korrekt zu entwickeln

pdflatex vorbereitung-auf-den-workshop.tex || goto :error
pdflatex vorbereitung-auf-den-workshop.tex || goto :error

:: Wenn die PDF erfolgreich erstellt worden ist,
:: dann schließe das Fenster, falls es über Doppelklick geöffnet worden ist
ECHO Erfolgreich PDF erstellt!

:: Lösche gerade erzeugte aber nicht benötigte Artefakte
DEL *.aux *.log *.out *.blg *.bbl *.synctex(busy) *.synctex.gz

:: Kopiere Datei ins Überverzeichnis
XCOPY vorbereitung-auf-den-workshop.pdf .. || goto :error

:: Zeige PDF mit der Standard-Anwendung an
start vorbereitung-auf-den-workshop.pdf

goto :EOF

:: Wenn die PDF erfolgreich fehlgeschlagen ist,
:: dann behalte das Fenster geöffnet.
:error
echo Fehler bei der Erstellung der PDF!
PAUSE
