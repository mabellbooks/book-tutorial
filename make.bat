if exist book.md del book.md
for %%f in (chapters\*.md) do type "%%f" >> book.md

pandoc -f markdown+smart book.md -o book.pdf -d defaults.yaml
pandoc -f markdown+smart book.md -o book.html -s --ascii -d defaults.yaml
pandoc -f markdown+smart book.md -o book.epub -d defaults.yaml
pandoc -f markdown+smart book.md -o book.docx -d defaults.yaml
