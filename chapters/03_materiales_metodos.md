# Materiales y métodos

Para recopilar información genómica, clínica y fenotípica sobre la fenilcetonuria y el gen PAH, se consultaron diferentes bases de datos biomédicas:

* **ClinVar** - base de datos de variantes genéticas y su interpretación clínica.
* **OMIM** - base de datos sobre enfermedades genéticas humanas y genes asociados.
* **Ensembl** - recurso genómico utilizado para consultar información sobre genes, transcritos y variantes.
* **NCBI Gene** - base de datos empleada para obtener información general sobre el gen PAH.

Se siguió el flujo de trabajo / procesamiento siguiente:
```{figure} ../figures/pipeline_pku_pah_serpiente_bifurcaciones_linea_nueva.png
:label: procesamiento
:alt: Flujo de procesamiento 
:align: center

Fig. Flujo de procesamiento. Fuente: creación propia.
```

## Inicio del estudio

La búsqueda para redactar la introducción y obtener una base inicial de información bibliográfica se realizó utilizando los siguientes parámetros principales en **OMIM**[^pah_omim]. Posteriormente, se consultó **PubMed** para revisar los artículos relacionados con la enfermedad y el gen de interés.

:::{table} Seleccion de enfremedad
:label: tabla-selecion-enfermedad
:align: center

| Elemento      | Elección                                              |
| ------------- |-------------------------------------------------------|
| Enfermedad    | Fenilcetonuria / PKU                              |
| Gen principal | PAH[^ncbi_gene]                                    |
| Proteína      | Fenilalanina hidroxilasa                              |
| Ruta          | Metabolismo de aminoácidos aromáticos                 |
| Fenotipo      | Hiperfenilalaninemia, daño neurológico si no se trata |
| Referencia    | GRCh38 / hg38                                     |
| Bases clave   | OMIM, ClinVar, HPO, ENA, Ensembl VEP                  |

:::

[^pah_omim]: https://omim.org/entry/612349
[^ncbi_gene]: https://www.ncbi.nlm.nih.gov/gene/5053

## Obtención de datos
Durante la búsqueda en European Nucleotide Archive (ENA) se utilizaron diferentes términos relacionados con la fenilcetonuria, el gen PAH y la secuenciación en Homo sapiens.

Las búsquedas principales fueron:

* *phenylketonuria Homo sapiens sequencing*
* *PKU Homo sapiens sequencing*
* *PAH Homo sapiens sequencing*
* *PAH gene Homo sapiens*
* *phenylalanine hydroxylase Homo sapiens sequencing*

También se realizaron búsquedas más específicas para localizar archivos FASTQ y estudios de secuenciación:

* *phenylketonuria Homo sapiens whole exome sequencing*
* *PAH Homo sapiens targeted sequencing*
* *PAH gene targeted sequencing Homo sapiens*
* *phenylketonuria exome sequencing*
* *hyperphenylalaninemia Homo sapiens sequencing*

Durante esta búsqueda se identificaron varios conjuntos de datos relacionados con la fenilcetonuria:

* **SRP403796**[^SRP403796]
* **SRX3156518**[^SRX3156518]
* **SRR1171639**[^SRR1171639]

[^SRP403796]: https://www.ebi.ac.uk/ena/browser/view/SRP403796
[^SRX3156518]: https://www.ebi.ac.uk/ena/browser/view/SRX3156518
[^SRR1171639]: https://www.ebi.ac.uk/ena/browser/view/SRR1171639

El proyecto seleccionado corresponde al estudio **PRJNA237676/SRP038109**, asociado al artículo “_Mutation Spectrum of Six Genes in Chinese Phenylketonuria Patients Obtained through Next-Generation Sequencing_”. En este estudio se analizaron 93 muestras humanas relacionadas con PKU mediante secuenciación Ion Torrent PGM de un panel de genes implicados en fenilcetonuria e hiperfenilalaninemia, incluyendo PAH. Aunque el estudio incluye múltiples muestras, los datos disponibles en ENA/SRA proporcionados en el run SRR1171639 han sido agrupados, por lo que el análisis práctico se ha realizado sobre dicho run como conjunto global de lecturas.

Al no disponer de una tabla explícita de correspondencia entre barcodes y muestras individuales, no se han asignado variantes a pacientes concretos. El análisis se ha interpretado como una exploración de variantes presentes en el conjunto de lecturas del run.

Las características principales del dataset seleccionado fueron:

:::{table} Datos iniciales
:label: tabla-datos-iniciales
:align: center

| Parámetro              | Valor                                    |
|------------------------|------------------------------------------|
| Número de acceso       | SRR1171639                           |
| Tipo de datos          | Raw reads / Runs                     |
| Estrategia de librería | WXS, WGS, TARGETED-CAPTURE, AMPLICON |
| Plataforma             | Ion Torrent                          |
| Tipo de archivo        | FASTQ                                |

:::

Además, el conjunto de datos estaba asociado a un artículo científico ya publicado. Esto permitió comprobar mejor la validez de los datos, comparar los resultados obtenidos y valorar si las variantes identificadas se correlacionaban con los hallazgos descritos en el estudio original.

Como el estudio original alineó las lecturas depuradas frente al genoma humano HG19 / NCBI Build 37, se seleccionó el mismo genoma de referencia en Galaxy. De esta manera, el análisis se mantuvo coherente con la publicación original. No se utilizó GRCh38/hg38 en el análisis principal, porque las coordenadas y anotaciones de las variantes no serían directamente comparables con las del estudio original.

## Control de calidad inicial
El control de calidad inicial se realizó con FastQC. El dataset presentó **10.454.572 reads** y un total aproximado de **1,6 Gbp** de datos. La longitud de las lecturas fue variable, entre **14 y 269 bp**, lo que es compatible con una estrategia de amplicones y con posibles recortes previos.

FastQC mostró resultados correctos para la calidad por secuencia, el contenido de adaptadores y el contenido de bases N. No se detectó contaminación relevante por adaptadores ni presencia significativa de bases indefinidas.

Sin embargo, algunas métricas aparecieron como advertencia o fallo. La calidad por base mostró una advertencia, con una ligera disminución hacia el final de las lecturas, especialmente después de aproximadamente **220 bp**. También se observaron fallos en el contenido de GC por secuencia, el contenido de bases por posición, las secuencias sobrerrepresentadas y la duplicación.

Estos resultados no se interpretaron directamente como contaminación o mala calidad del dataset, ya que los datos proceden de una estrategia de PCR dirigida por amplicones. En este tipo de librerías, las lecturas no se distribuyen de forma aleatoria por todo el genoma, sino que proceden de regiones específicas amplificadas. Por ello, es esperable observar sesgos en la composición de bases, una distribución de GC distinta a la de una librería genómica aleatoria y un mayor número de secuencias repetidas o duplicadas.

Por tanto, los fallos detectados por FastQC se consideraron principalmente una consecuencia del diseño del experimento y no una razón para aplicar un recorte agresivo. La ausencia de contaminación por adaptadores y de bases N apoyó que los datos eran adecuados para continuar con el análisis.

## Limpieza de datos
La limpieza de las lecturas se planteó teniendo en cuenta que el artículo original indica que los barcodes y otras secuencias técnicas fueron eliminados durante el filtrado previo de los datos. Además, el informe de FastQC no mostró contaminación relevante por adaptadores, ya que el módulo Adapter Content apareció como correcto. Por este motivo, no se realizó un recorte específico de adaptadores ni de barcodes.

Sin embargo, sí se aplicó un recorte suave de calidad con Cutadapt, con el objetivo de eliminar bases terminales de baja calidad y descartar lecturas demasiado cortas. Se utilizó un umbral de calidad **Phred < 20** y una longitud mínima de **50 pb**. Este criterio permitió conservar lecturas compatibles con el diseño de amplicones del estudio, cuyos fragmentos esperados tenían aproximadamente **103–267 pb**, eliminando a la vez fragmentos muy cortos o extremos de baja calidad que podían afectar al alineamiento y a la llamada de variantes.

Por tanto, Cutadapt se utilizó únicamente como control de calidad adicional, no como herramienta de demultiplexado ni de eliminación de barcodes, ya que esta información no estaba disponible en el archivo FASTQ público.

## Alineamiento de secuencias
Las lecturas limpias se alinearon contra el genoma humano de referencia hg19 / GRCh37 utilizando BWA-MEM, siguiendo la referencia empleada por el estudio original.

Debido a que el dataset procede de una estrategia de secuenciación por amplicones, se esperaba una cobertura concentrada en las regiones amplificadas de los genes del panel, especialmente PAH y otros genes relacionados con el metabolismo de BH4. Tras el alineamiento, el archivo BAM se procesó con Samtools sort para ordenar las lecturas según su posición genómica. Posteriormente, se utilizó Samtools index para generar el índice del BAM, necesario para su visualización y para el análisis posterior.

El alineamiento con BWA-MEM produjo **9.965.042** lecturas totales, de las cuales **9.667.094** mapearon correctamente, equivalente al **97,01 %**. Este alto porcentaje de mapeo indica que las lecturas eran compatibles con el genoma humano de referencia y que el alineamiento fue adecuado. El archivo no presentó lecturas paired-end, lo que confirmó que el dataset debía tratarse como single-end. Además, se observaron 4.765 alineamientos suplementarios, una proporción muy baja respecto al total, por lo que no se consideraron problemáticos para el análisis global.

El análisis con Samtools idxstats mostró que la mayoría de las lecturas mapeadas se concentraban en cromosomas que contienen genes incluidos en el panel de PKU y deficiencia de BH4. Destacó **chr12**, donde se localiza el gen **PAH, con 3.440.100 lecturas** mapeadas. También se observaron lecturas abundantes en chr4, chr14, chr10 y chr11, compatibles con la presencia de genes como QDPR, GCH1, PCBD1 y PTS.

## Llamado de variantes
El objetivo de este paso fue identificar variantes genéticas presentes en las secuencias alineadas. Para ello, se realizó la llamada de variantes utilizando dos herramientas diferentes - FreeBayes y VarScan.

En el caso de FreeBayes, el archivo VCF resultante se filtró con VCFfilter utilizando los criterios `QUAL > 20, DP > 20 y AO > 5`. Estos filtros permitieron conservar variantes con una calidad mínima, cobertura suficiente y soporte adecuado del alelo alternativo.

En el caso de VarScan, el filtrado se adaptó a la estructura del VCF generado por esta herramienta. Como el campo QUAL no contenía valores numéricos y el campo AO no estaba presente, se utilizó el parámetro `ADP > 20` como criterio principal de cobertura.

Posteriormente, se filtraron las variantes localizadas en el gen PAH usando el patrón `^#|[|]PAH[|]`, por ser el gen principal asociado a la fenilcetonuria. Los VCF filtrados se anotaron funcionalmente mediante Ensembl Variant Effect Predictor (VEP) usando installacion local en Docker (sin Galaxy). Esta herramienta permitió obtener información sobre el gen afectado, el transcrito, la consecuencia molecular, el impacto funcional y los cambios descritos según la nomenclatura HGVSc y HGVSp. Además, se incorporó información clínica procedente de ClinVar, especialmente la clasificación clínica de cada variante.

A partir de los archivos anotados con VEP, se realizó un filtrado de segundo nivel mediante la función propia en Python (`filter()`). Este paso generó una lista de variantes priorizadas, conservando variantes de PAH con mayor posible interés funcional, incluyendo variantes con impacto **HIGH** o **MODERATE**, variantes relacionadas con **splicing** y variantes intrónicas situadas a menos de **30 pb** de un límite exón-intrón. Para la priorización se utilizaron campos como `SYMBOL`, `Consequence`, `IMPACT`, `HGVSc`, `HGVSp`, `Existing_variation` y `ClinVar_CLNSIG`.

Finalmente, se aplicó un filtrado de tercer nivel mediante la función propia en Python (`score()`). En este paso, las variantes priorizadas fueron puntuadas según su impacto funcional, consecuencia molecular y clasificación clínica en ClinVar. Además, se eliminaron duplicados usando la combinación **CHROM + POS + REF + ALT**, conservando la anotación más relevante para cada variante. Este proceso generó una segunda lista final, puntuada y deduplicada.

En el resultado final, FreeBayes produjo **5 variantes priorizadas y deduplicadas** - **3** de prioridad alta, **1** de prioridad media y **1** de prioridad baja. En el caso de **VarScan**, se obtuvieron **138 variantes priorizadas y deduplicadas** - **64** de prioridad alta, **11** de prioridad media y **63** de prioridad baja.
