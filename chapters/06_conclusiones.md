# Conclusiones

El análisis permitió identificar y priorizar variantes candidatas en el gen PAH relacionadas con fenilcetonuria. Las variantes más relevantes fueron aquellas con evidencia clínica en ClinVar, especialmente las clasificadas como Pathogenic o Likely pathogenic y con consecuencias funcionales importantes, como stop_gained, frameshift, variantes de splicing y algunas variantes missense patogénicas.

La comparación entre FreeBayes y VarScan mostró diferencias importantes, por lo que los resultados se interpretaron con cautela. La mayoría de variantes clínicas procedieron de VarScan, mientras que FreeBayes generó una lista más reducida.

La principal limitación fue el uso de SRR1171639 como run global, sin separación por muestras individuales ni barcodes. Por ello, las variantes detectadas no pueden asignarse a pacientes concretos y deben considerarse candidatas bioinformáticas, no genotipos clínicos confirmados.

En conjunto, el trabajo demuestra que un pipeline basado en datos públicos, alineamiento, llamada de variantes, anotación con VEP y priorización con ClinVar permite seleccionar variantes relevantes en PAH, aunque los hallazgos principales deberían validarse mediante revisión manual y técnicas independientes.
:::{table} Resultados resumidos
:label: tabla-conclusiones
:align: center

| Aspecto                   | Resultado / conclusión                                           | Interpretación                                                                                                             |
|---------------------------|------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------|
| Enfermedad analizada      | Fenilcetonuria (PKU)                                             | Enfermedad metabólica adecuada para el análisis porque existe una relación clara entre gen, enzima, metabolito y fenotipo. |
| Gen principal             | PAH                                                              | Codifica la fenilalanina hidroxilasa, enzima responsable de convertir fenilalanina en tirosina.                            |
| Dataset utilizado         | SRR1171639                                                       | Run público procedente de ENA, asociado a un estudio de pacientes con PKU / hiperfenilalaninemia.                          |
| Tipo de análisis          | Run global de lecturas                                           | El análisis se realizó sobre el conjunto completo de lecturas, no sobre muestras individuales separadas.                   |
| Referencia usada          | hg19 / GRCh37                                                    | Se eligió para mantener la comparabilidad con el estudio original.                                                         |
| Callers utilizados        | FreeBayes y VarScan                                              | El uso de dos herramientas permitió comparar resultados y valorar la robustez de las variantes detectadas.                 |
| Resultado de FreeBayes    | 5 variantes finales priorizadas y deduplicadas                   | Generó una lista más reducida y conservadora.                                                                              |
| Resultado de VarScan      | 138 variantes finales priorizadas y deduplicadas                 | Detectó más variantes, incluyendo la mayoría de variantes clínicas principales.                                            |
| Anotación funcional       | VEP                                                              | Permitió obtener consecuencia molecular, impacto funcional, transcrito afectado y nomenclatura HGVSc/HGVSp.                |
| Evidencia clínica         | ClinVar                                                          | Se utilizó para priorizar variantes con clasificación Pathogenic, Likely pathogenic o Pathogenic/Likely pathogenic.        |
| Variantes más relevantes  | stop_gained, frameshift, splicing y missense patogénicas         | Son compatibles con pérdida o alteración de la función de PAH.                                                             |
| Interpretación principal  | Variantes candidatas en PAH                                      | Los resultados sugieren la presencia de variantes con posible relevancia clínica en el conjunto de lecturas.               |
| Limitación principal      | Ausencia de barcodes / muestras individuales                     | No es posible asignar variantes a pacientes concretos ni confirmar genotipos individuales.                                 |
| Precaución técnica        | Muchas variantes proceden solo de VarScan                        | Algunas variantes, especialmente indels o frameshift, deben interpretarse con cautela.                                     |
| Validación necesaria      | Revisión en IGV y confirmación por Sanger                        | Sería necesaria para confirmar cobertura, frecuencia alélica y presencia real de las variantes principales.                |
| Conclusión final          | Pipeline útil para priorización bioinformática                   | El flujo permite seleccionar variantes relevantes, pero no sustituye un análisis clínico individualizado.                  |

:::