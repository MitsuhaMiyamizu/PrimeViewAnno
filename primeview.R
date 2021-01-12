BiocManager::install("AnnotationForge")
BiocManager::install("human.db0")
library(AnnotationForge)
makeDBPackage('HUMANCHIP_DB',
              affy = TRUE,
              prefix = 'primeview',
              fileName = 'PrimeView.na36.annot.csv', 
              baseMapType = 'eg',
              outputDir = '.',
              author = 'Bioconductor',
              version = '0.99.1',
              manufacturer = 'Affymetrix',
              manufacturerUrl = 'http://www.affymetrix.com')

# install and load:
install.packages('primeview.db', repos = NULL, type = 'source')
library(primeview.db)
##Ref: https://support.bioconductor.org/p/130727/