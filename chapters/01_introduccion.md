# Introducción

## Enfermedad seleccionada
La fenilcetonuria (PKU; 261600)[^1] es una enfermedad genética de herencia autosómica recesiva, relacionada con alteraciones en el metabolismo de un aminoácido esencial exógeno - la fenilalanina. Esta enfermedad afecta al desarrollo cognitivo después del nacimiento. Esto ocurre por el efecto neurotóxico de la hiperfenilalaninemia (HPA), es decir, por niveles elevados de fenilalanina en sangre. La HPA suele designarse como una variante más suave de la PKU. La PKU es un error congénito del metabolismo causado por una deficiencia de la enzima fenilalanina hidroxilasa (PAH) {cite:p}`zurfluhMolecularGeneticsTetrahydrobiopterinresponsive2008`.

En condiciones normales, la concentración de fenilalanina en sangre se mantiene en valores bajos y bastante estables. Se han descrito niveles medios de 58 ± 15 µmol/L en adultos, 60 ± 13 µmol/L en adolescentes y 62 ± 18 µmol/L en niños. En los recién nacidos, el límite superior normal se sitúa en torno a 120 µmol/L. Sin embargo, en la fenilcetonuria clásica no tratada, estos niveles pueden aumentar de forma muy marcada, alcanzando concentraciones de hasta 2400 µmol/L {cite:p}`gregoryPlasmaFreeAmino1986`.

La presencia de una capacidad intelectual normal es muy poco frecuente en pacientes con fenilcetonuria que no han recibido tratamiento dietético. En pacientes no tratados, la PKU puede causar discapacidad intelectual y otros signos clínicos, como olor corporal tipo "moho" o "ratón", pigmentación clara, alteraciones de la marcha y la postura, eccema y epilepsia. Una capacidad intelectual normal es muy poco frecuente en estos casos sin tratamiento dietético {cite:p}`paineVariabilityManifestationsUntreated1957`.

Además, la PKU no tratada se asocia con alteraciones conductuales graves, como rasgos autistas, hiperactividad, agresividad, trastornos psicóticos y conductas autolesivas. Incluso en pacientes tratados precozmente, se han descrito mayores tasas de depresión, ansiedad e introversión social que en la población general. En general, la gravedad de estos problemas depende del tiempo y del grado de exposición a niveles elevados de fenilalanina {cite:p}`brummPsychiatricSymptomsDisorders2010`.

Aunque el tratamiento temprano mejora el pronóstico, no siempre normaliza completamente el desarrollo cognitivo. Incluso los niveles inferiores a 360 µmol/L al límite de hiperfenilalaninemia suave, durante la infancia se asocia con un IQ verbal normalizado, pero con el IQ de rendimiento posiblemente reducido {cite:p}`griffithsWechslerSubscaleIQ2000`.

Por otro lado, existe PKU materna o embriopatía por PKU, y es un ejemplo de enfermedad genética en la que el daño fetal depende del genotipo y del metabolismo de la madre. En mujeres homocigotas con PKU mal controlada, los niveles elevados de fenilalanina materna pueden afectar al desarrollo del feto, incluso aunque este no tenga PKU. Este daño se ve favorecido por la placenta, que normalmente mantiene concentraciones de aminoácidos más altas en el feto que en la madre {cite:p}`huntleyMaternalPhenylketonuriaCourse1969,hanleyMaternalPhenylketonuriaPKUa1987,kerrFetalPKUEffect1968`. 

Su fenotipo metabólico tiene un origen multifactorial. Por una parte, depende del ambiente, ya que la alimentación normal introduce L-fenilalanina. Por otra parte, depende de la genética, porque existen muchas mutaciones, más de 500 alelos, en el gen PAH, localizado en el cromosoma 12q23.2.

## Gen de interés
El gen PAH [^2][^3] ocupa aproximadamente 90 kb y está formado por 13 exones. Sin embargo, al considerar también las regiones flanqueantes, la secuencia genómica completa de PAH alcanza alrededor de 171 kb. Esta región incluye una zona 5’ UTR de unos 27 kb y una secuencia situada después del sitio de poliadenilación en el exón 13 de aproximadamente 65 kb {cite:p}`guttlerMolecularGeneticsPKU1986,koneckiIdentificationTwoMissense1991,scriverPAHGenePhenylketonuria2007`.

```{figure} ../figures/enzima_fenilalanina_hidroxilasa.png
:label: enzima-fenilalanina-hidroxilasa
:alt: L-fenilalanina hidroxilasa
:align: center

Fig. L-fenilalanina hidroxilasa - Fuente: [RCSB PDB](https://www.rcsb.org/3d-sequence/1DMW?assemblyId=1)
```

El gen PAH codifica la enzima L-fenilalanina hidroxilasa (EC 1.14.16.1) [](#enzima-fenilalanina-hidroxilasa) [^4]. La enzima PAH convierte la fenilalanina en tirosina en presencia de oxígeno molecular y pequeñas cantidades catalíticas de tetrahidrobiopterina (BH4), que actúa como cofactor no proteico siguiendo la reacción en la [](#reaccion-catalizada). Este paso es limitante en el catabolismo de la fenilalanina.

```{figure} ../figures/reaccion_catalizada.png
:label: reaccion-catalizada
:alt: Reacción catalizada
:align: center

Fig. Reacción catalizada - Fuente: [UniProt](https://www.uniprot.org/uniprotkb/P00439/entry)
```

## Metabolismo de L-fenilalanina

En la ruta metabólica normal [](#ruta-phe-hidroxilasa), la L-fenilalanina se transforma en L-tirosina mediante la enzima fenilalanina hidroxilasa (PAH). Para que esta reacción ocurra son necesarios el oxígeno molecular (O₂) y el cofactor tetrahidrobiopterina (BH₄). Durante la reacción, el BH₄ se oxida a BH₂, por lo que debe regenerarse para que la enzima pueda seguir funcionando.

```{figure} ../figures/ruta-phe-hidroxilasa.png
:label: ruta-phe-hidroxilasa-normal
:alt: Ruta de L-fenilalanina hidroxilasa normal
:align: center

Fig. Ruta de L-fenilalanina hidroxilasa normal - Fuente: creación propia
```

Posteriormente, la L-tirosina continúa su catabolismo. Primero sufre una transaminación y se convierte en p-hidroxifenilpiruvato. Después, este compuesto participa en reacciones posteriores que conducen a la formación de ácido homogentísico, uno de los intermediarios principales del catabolismo de la tirosina.

Cuando la enzima PAH no funciona correctamente, la fenilalanina no se convierte de forma adecuada en tirosina. Como consecuencia, se produce un aumento de fenilalanina, disminuye la formación de tirosina y parte de la fenilalanina se desvía hacia rutas metabólicas alternativas.

```{figure} ../figures/ruta-phe-hidroxilasa_mala.png
:label: ruta-phe-hidroxilasa-disfuncional
:alt: Ruta de L-fenilalanina hidroxilasa disfuncional
:align: center

Fig. Ruta de L-fenilalanina hidroxilasa disfuncional - Fuente: creación propia
```

Una de estas rutas alternativas es la transaminación de la fenilalanina, que produce ácido fenilpirúvico. Este compuesto puede transformarse en otros metabolitos, como el ácido fenil-láctico, por reducción, y el ácido fenilacético, por descarboxilación. Estos compuestos se denominan fenilcetonas. Su acumulación en sangre y su eliminación por la orina explican el nombre de la enfermedad fenilcetonuria.

## Efectos funcionales de las mutaciones en el gen PAH
Aunque la expresión del gen PAH se observa principalmente en el hígado, aunque también se ha detectado en otros tejidos como riñones, páncreas y cerebro {cite:p}`lichter-koneckiHumanPhenylalanineHydroxylase1999`.

A nivel funcional, el ácido fenilpirúvico inhibe la enzima piruvato descarboxilasa en el cerebro, pero no en el hígado. Por tanto, el aumento de metabolitos derivados de la transaminación de la fenilalanina podría contribuir a los defectos de mielinización y a la afectación cognitiva observada en la PKU. Esto sugiere que el daño neurológico no depende solo de la alteración metabólica hepática, sino también de posibles efectos tóxicos directos sobre el tejido nervioso {cite:p}`bowdenPossibleBiochemicalModel1972`.

Por otro lado, en un estudio, en el hígado de un feto diagnosticado prenatalmente con PKU, no se detectó actividad enzimática de fenilalanina hidroxilasa. Sin embargo, el tamaño y la cantidad de ARNm eran normales. Esto puede indicar que las mutaciones no afectan a la transcripción, sino probablemente a la traducción o a la estabilidad de la proteína {cite:p}`ledleyPhenylalanineHydroxylaseExpression1988`.

## Justificación del análisis

Se seleccionó la fenilcetonuria (PKU) porque es una enfermedad genética metabólica bien caracterizada y con una relación clara entre gen, enzima, metabolito y fenotipo.

La enfermedad está causada principalmente por variantes en el gen PAH, que codifica la enzima fenilalanina hidroxilasa. Esta enzima participa en la conversión de fenilalanina en tirosina. Cuando su actividad se reduce, la fenilalanina se acumula en sangre y puede producir toxicidad neurológica.

Además, la PKU está ampliamente documentada en bases de datos biomédicas como OMIM, ClinVar y HPO. También existen datos de secuenciación humana disponibles en repositorios como ENA, lo que permite realizar un análisis clínico-genómico más completo.

Por último, según la lista de enfermedades raras, la PKU presenta una prevalencia de 11,509/100.000 habitantes en Europa [^5]. Este dato añade aún más valor a su estudio, ya que permite analizar una enfermedad rara pero suficientemente documentada.

En este trabajo, la PKU se analizará desde una perspectiva clínico-genómica, integrando información fenotípica, datos de secuenciación y análisis bioinformático.

[^1]: https://omim.org/entry/261600
[^2]: https://omim.org/entry/612349?search=PAH
[^3]: https://www.ncbi.nlm.nih.gov/gene/5053
[^4]: https://enzyme.expasy.org/EC/1.14.16.1
[^5]: https://www.orpha.net/pdfs/orphacom/cahiers/docs/GB/Prevalence_of_rare_diseases_by_alphabetical_list.pdf

