#Downloads Mass Attenuation Data from the National Institutes of Standards and Technology


library(tm)
library(readr)
library(tau)
library(stringi)

d <- read_file("http://physics.nist.gov/PhysRefData/XrayMassCoef/ElemTab/z02.html")
d <- PlainTextDocument(d, heading = "Plain text document",
                          id = basename(tempfile()),
                          language = "en")
d <- data.frame(d[1])


