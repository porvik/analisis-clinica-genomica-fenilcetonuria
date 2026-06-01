#!/usr/bin/env bash
set -euo pipefail

OUT_MD="single_page.md"
OUT_DOCX="single_page.docx"

# Limpia archivo anterior
cd chapters/
rm -f "$OUT_MD" "$OUT_DOCX"

# Cabecera
echo "# Informe completo" > "$OUT_MD"
echo "" >> "$OUT_MD"

# Lista manual de capítulos en orden
FILES=(
  01_introduccion.md
  02_objetivos.md
  03_materiales_metodos.md
  04_resultados.md
  05_discusion.md
  06_conclusiones.md
  07_bibliografia.md
  08_anexos.md
)

# Concatenar archivos
for file in "${FILES[@]}"; do
  if [ -f "$file" ]; then
    echo "Añadiendo $file"
    echo "" >> "$OUT_MD"
    echo "<!-- BEGIN $file -->" >> "$OUT_MD"
    echo "" >> "$OUT_MD"
    cat "$file" >> "$OUT_MD"
    echo "" >> "$OUT_MD"
    echo "<!-- END $file -->" >> "$OUT_MD"
    echo "" >> "$OUT_MD"
  else
    echo "Aviso: no existe $file"
  fi
done

# Convertir a DOCX con MyST
uv run myst build "$OUT_MD" --docx

echo "Creado: $OUT_MD"
echo "Busca el DOCX en _build/exports/ o _build/"

rm "$OUT_MD"
cd ..