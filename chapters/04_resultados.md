# Resultados
Tras el filtrado, anotación y puntuación de las variantes, la interpretación se centró únicamente en aquellas variantes de PAH con anotación clínica relevante en ClinVar. No se interpretó la lista completa de variantes, ya que muchas correspondían a cambios de bajo interés, variantes intrónicas o variantes sin evidencia clínica suficiente. Por tanto, se seleccionó un subconjunto de variantes con mayor relevancia funcional y clínica, ordenadas según su puntuación final, prioridad, consecuencia molecular y clasificación en ClinVar.

La lista final se dividió en cuatro grupos principales: variantes de pérdida de función, variantes missense patogénicas, variantes probablemente patogénicas y variantes secundarias de prioridad media. Esta división permitió interpretar los resultados de forma más clara y evitar una discusión individual excesiva de todas las variantes detectadas.

## Variantes de pérdida de función

El primer grupo incluyó variantes con consecuencias moleculares graves, como stop_gained, frameshift_variant y splice_acceptor_variant. Estas variantes son especialmente relevantes porque pueden producir una proteína PAH truncada, alterar el marco de lectura o afectar al procesamiento correcto del ARN mensajero. En conjunto, este tipo de alteraciones puede reducir o eliminar la función de la fenilalanina hidroxilasa, lo que es coherente con el mecanismo molecular de la fenilcetonuria.

Dentro de este grupo destacó la variante c.1053C>A / p.Tyr351Ter, clasificada como Pathogenic en ClinVar, con impacto HIGH y la puntuación más alta del análisis (Final_score = 15). Al tratarse de una variante stop_gained, introduce un codón de parada prematuro y puede dar lugar a una proteína incompleta. Por este motivo, se consideró una de las variantes candidatas más relevantes del análisis.

También se identificó la variante c.425del / p.Pro142LeufsTer48, clasificada como Likely_pathogenic, con consecuencia frameshift_variant y splice_region_variant. Esta variante altera el marco de lectura y genera un codón de parada prematuro, por lo que también se consideró de alta prioridad.

Otra variante importante fue c.427-1G>A, anotada como splice_acceptor_variant y clasificada como Pathogenic. Las variantes en sitios aceptores de splicing pueden alterar la eliminación correcta de intrones y provocar transcritos anómalos. Por ello, aunque no tenga cambio proteico directo anotado en la tabla, su posible efecto sobre el procesamiento del ARN la convierte en una variante funcionalmente relevante.

Además, se detectaron varias deleciones frameshift clasificadas como Pathogenic, como c.1138del, c.1112del, c.1084del, c.1009del, c.892del, c.822del, c.548del y c.432del. Todas ellas fueron clasificadas con impacto HIGH y prioridad High, por lo que se interpretaron como variantes compatibles con pérdida de función de PAH.

:::{table} Variantes de pérdida de función
:label: variantes_perdidas_de_funcion
:align: center

| Caller   | CHROM   |       POS | REF   | ALT   | IMPACT   | Consequence                              | HGVSc                        | HGVSp                                | ClinVar_CLNSIG    | ClinVar_CLNDN                |   Final_score | Final_priority   |
|:---------|:--------|----------:|:------|:------|:---------|:-----------------------------------------|:-----------------------------|:-------------------------------------|:------------------|:-----------------------------|--------------:|:-----------------|
| VarScan  | chr12   | 103237555 | G     | T     | HIGH     | stop_gained&splice_region_variant        | ENST00000307000.2:c.1053C>A  | ENSP00000303500.2:p.Tyr351Ter        | Pathogenic        | not_provided&Phenylketonuria |            15 | High             |
| VarScan  | chr12   | 103271240 | AG    | A     | HIGH     | frameshift_variant&splice_region_variant | ENST00000307000.2:c.425del   | ENSP00000303500.2:p.Pro142LeufsTer48 | Likely_pathogenic | Phenylketonuria              |            14 | High             |
| VarScan  | chr12   | 103237469 | AG    | A     | HIGH     | frameshift_variant                       | ENST00000307000.2:c.1138del  | ENSP00000303500.2:p.Leu380SerfsTer15 | Pathogenic        | Phenylketonuria              |            13 | High             |
| VarScan  | chr12   | 103260442 | C     | T     | HIGH     | splice_acceptor_variant                  | ENST00000307000.2:c.427-1G>A |                                      | Pathogenic        | not_provided&Phenylketonuria |            13 | High             |
| VarScan  | chr12   | 103237495 | AT    | A     | HIGH     | frameshift_variant                       | ENST00000307000.2:c.1112del  | ENSP00000303500.2:p.Asn371IlefsTer24 | Pathogenic        | not_provided&Phenylketonuria |            13 | High             |
| VarScan  | chr12   | 103237523 | AG    | A     | HIGH     | frameshift_variant                       | ENST00000307000.2:c.1084del  | ENSP00000303500.2:p.Leu362TrpfsTer33 | Pathogenic        | not_provided&Phenylketonuria |            13 | High             |
| VarScan  | chr12   | 103245469 | GA    | G     | HIGH     | frameshift_variant                       | ENST00000307000.2:c.892del   | ENSP00000303500.2:p.Ser298ProfsTer38 | Pathogenic        | not_provided&Phenylketonuria |            13 | High             |
| VarScan  | chr12   | 103238154 | GC    | G     | HIGH     | frameshift_variant                       | ENST00000307000.2:c.1009del  | ENSP00000303500.2:p.Ala337HisfsTer58 | Pathogenic        | not_provided&Phenylketonuria |            13 | High             |
| VarScan  | chr12   | 103246597 | CG    | C     | HIGH     | frameshift_variant                       | ENST00000307000.2:c.822del   | ENSP00000303500.2:p.Glu275AsnfsTer61 | Pathogenic        | Phenylketonuria              |            13 | High             |
| VarScan  | chr12   | 103249056 | GC    | G     | HIGH     | frameshift_variant                       | ENST00000307000.2:c.548del   | ENSP00000303500.2:p.Gly183AlafsTer7  | Pathogenic        | not_provided&Phenylketonuria |            13 | High             |
| VarScan  | chr12   | 103260435 | TA    | T     | HIGH     | frameshift_variant                       | ENST00000307000.2:c.432del   | ENSP00000303500.2:p.Phe144LeufsTer46 | Pathogenic        | Phenylketonuria              |            13 | High             |
| VarScan  | chr12   | 103310895 | AC    | A     | HIGH     | frameshift_variant                       | ENST00000546844.1:c.13del    | ENSP00000446658.1:p.Val5SerfsTer33   | Pathogenic        | Phenylketonuria              |            13 | High             |

:::

## Variantes missense patogénicas

El segundo grupo incluyó variantes missense clasificadas como Pathogenic o Pathogenic/Likely_pathogenic en ClinVar. A diferencia de las variantes de pérdida de función, las variantes missense no interrumpen necesariamente la proteína, sino que sustituyen un aminoácido por otro. Sin embargo, si el cambio afecta a una región importante de la proteína, puede alterar su plegamiento, estabilidad o actividad enzimática.

En este grupo se identificaron variantes como c.1286C>A / p.Ala429Asp, c.1223G>C / p.Arg408Pro, c.596A>G / p.Tyr199Cys y c.467T>C / p.Phe156Ser, todas clasificadas como Pathogenic y con prioridad High. Estas variantes presentan impacto MODERATE, pero su clasificación clínica apoya su posible relevancia en fenilcetonuria.

También se incluyeron c.1030T>G / p.Ser344Ala y c.713G>A / p.Arg238Gln, clasificadas como Pathogenic/Likely_pathogenic. La variante p.Arg238Gln es especialmente interesante porque aparece asociada en ClinVar a PAH-related disorder y Phenylketonuria, lo que refuerza su relación con la enfermedad.

Estas variantes missense se consideraron relevantes porque afectan directamente a la secuencia proteica de PAH. Aunque su impacto predicho por VEP es MODERATE, la evidencia clínica disponible permite priorizarlas frente a otras variantes sin clasificación o sin relación clara con fenilcetonuria.

:::{table} Variantes missense patogénicas
:label: variantes_missense_patogenicas
:align: center

| Caller   | CHROM   |       POS | REF   | ALT   | IMPACT   | Consequence      | HGVSc                       | HGVSp                         | ClinVar_CLNSIG               | ClinVar_CLNDN                                                             |   Final_score | Final_priority   |
|:---------|:--------|----------:|:------|:------|:---------|:-----------------|:----------------------------|:------------------------------|:-----------------------------|:--------------------------------------------------------------------------|--------------:|:-----------------|
| VarScan  | chr12   | 103234192 | G     | T     | MODERATE | missense_variant | ENST00000307000.2:c.1286C>A | ENSP00000303500.2:p.Ala429Asp | Pathogenic                   | not_provided&Phenylketonuria                                              |            10 | High             |
| VarScan  | chr12   | 103234255 | C     | G     | MODERATE | missense_variant | ENST00000307000.2:c.1223G>C | ENSP00000303500.2:p.Arg408Pro | Pathogenic                   | not_provided&Phenylketonuria                                              |            10 | High             |
| VarScan  | chr12   | 103249009 | T     | C     | MODERATE | missense_variant | ENST00000307000.2:c.596A>G  | ENSP00000303500.2:p.Tyr199Cys | Pathogenic                   | not_provided&Phenylketonuria                                              |            10 | High             |
| VarScan  | chr12   | 103260401 | A     | G     | MODERATE | missense_variant | ENST00000307000.2:c.467T>C  | ENSP00000303500.2:p.Phe156Ser | Pathogenic                   | not_provided&Phenylketonuria                                              |            10 | High             |
| VarScan  | chr12   | 103238134 | A     | C     | MODERATE | missense_variant | ENST00000307000.2:c.1030T>G | ENSP00000303500.2:p.Ser344Ala | Pathogenic/Likely_pathogenic | not_provided&Phenylketonuria                                              |             9 | High             |
| VarScan  | chr12   | 103246707 | C     | T     | MODERATE | missense_variant | ENST00000307000.2:c.713G>A  | ENSP00000303500.2:p.Arg238Gln | Pathogenic/Likely_pathogenic | PAH-related_disorder&Inborn_genetic_diseases&not_provided&Phenylketonuria |             9 | High             |

:::

## Variantes probablemente patogénicas

El tercer grupo incluyó variantes clasificadas como Likely_pathogenic o Pathogenic/Likely_pathogenic. Estas variantes no tienen siempre el mismo nivel de evidencia que las clasificadas directamente como Pathogenic, pero siguen siendo relevantes para la interpretación clínica.

La variante más destacada de este grupo fue c.425del / p.Pro142LeufsTer48, ya comentada dentro de las variantes de pérdida de función. Aunque ClinVar la clasifica como Likely_pathogenic, su consecuencia funcional es grave, ya que produce un cambio de marco de lectura. Por ello, se mantuvo como variante de alta prioridad.

También se incluyeron las variantes missense p.Ser344Ala y p.Arg238Gln, ambas clasificadas como Pathogenic/Likely_pathogenic. Estas variantes fueron consideradas candidatas relevantes porque combinan cambio proteico, prioridad alta y asociación clínica con fenilcetonuria o trastornos relacionados con PAH.

Por último, se identificó la variante c.1340dup, anotada como inframe_insertion&stop_retained_variant y clasificada como Pathogenic/Likely_pathogenic. A diferencia de las variantes anteriores, esta presentó una puntuación menor (Final_score = 7) y prioridad Medium, por lo que se interpretó como una variante secundaria.

:::{table} Variantes probablemente patogénicas
:label: variantes_probablemente_patogenicas
:align: center

| Caller   | CHROM   |       POS | REF   | ALT   | IMPACT   | Consequence | HGVSc                       | HGVSp                                | ClinVar_CLNSIG               | ClinVar_CLNDN                                                             |   Final_score | Final_priority   |
|:---------|:--------|----------:|:------|:------|:---------|:-----------------------------------------|:----------------------------|:-------------------------------------|:-----------------------------|:--------------------------------------------------------------------------|--------------:|:-----------------|
| VarScan  | chr12   | 103271240 | AG    | A     | HIGH     | frameshift_variant&splice_region_variant | ENST00000307000.2:c.425del  | ENSP00000303500.2:p.Pro142LeufsTer48 | Likely_pathogenic            | Phenylketonuria                                                           |            14 | High             |
| VarScan  | chr12   | 103238134 | A     | C     | MODERATE | missense_variant                         | ENST00000307000.2:c.1030T>G | ENSP00000303500.2:p.Ser344Ala        | Pathogenic/Likely_pathogenic | not_provided&Phenylketonuria                                              |             9 | High             |
| VarScan  | chr12   | 103246707 | C     | T     | MODERATE | missense_variant                         | ENST00000307000.2:c.713G>A  | ENSP00000303500.2:p.Arg238Gln        | Pathogenic/Likely_pathogenic | PAH-related_disorder&Inborn_genetic_diseases&not_provided&Phenylketonuria |             9 | High             |
| VarScan  | chr12   | 103232956 | C     | CT    | MODERATE | inframe_insertion&stop_retained_variant  | ENST00000307000.2:c.1340dup |                                      | Pathogenic/Likely_pathogenic | not_provided&Phenylketonuria                                              |             7 | Medium           |

:::

## Variantes secundarias de prioridad media

El cuarto grupo estuvo formado por variantes con evidencia clínica, pero con menor prioridad dentro del sistema de puntuación aplicado. En este grupo se incluyó únicamente c.1340dup, clasificada como Pathogenic/Likely_pathogenic, con impacto MODERATE y prioridad Medium.

Aunque esta variante presenta anotación clínica relevante, no se priorizó al mismo nivel que las variantes stop_gained, frameshift o splice_acceptor, ya que su consecuencia funcional fue menos clara en comparación con las variantes de pérdida de función. Por este motivo, se conservó como variante secundaria para la discusión, pero no como uno de los hallazgos principales.

:::{table} Variantes secundarias de prioridad media
:label: variantes_secundarias_de_prioridad_media
:align: center

| Caller   | CHROM   |       POS | REF   | ALT   | IMPACT   | Consequence                             | HGVSc                       | HGVSp   | ClinVar_CLNSIG               | ClinVar_CLNDN                |   Final_score | Final_priority   |
|:---------|:--------|----------:|:------|:------|:---------|:----------------------------------------|:----------------------------|:--------|:-----------------------------|:-----------------------------|--------------:|:-----------------|
| VarScan  | chr12   | 103232956 | C     | CT    | MODERATE | inframe_insertion&stop_retained_variant | ENST00000307000.2:c.1340dup |         | Pathogenic/Likely_pathogenic | not_provided&Phenylketonuria |             7 | Medium           |

:::
