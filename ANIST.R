library(tm)
library(readr)
library(tau)
library(stringi)

d <- read_file("http://physics.nist.gov/PhysRefData/XrayMassCoef/ElemTab/z02.html")
d <- PlainTextDocument(d, heading = "Plain text document",
                          id = basename(tempfile()),
                          language = "en")
d <- data.frame(d[1])



library(XML) 
d <- read_file(file=file.choose())

# download html
#html <- getURL("http://physics.nist.gov/PhysRefData/XrayMassCoef/ElemTab/z02.html", followlocation = TRUE) 
# parse html

doc = htmlParse(d, asText=TRUE)

plain.text <- xpathSApply(doc, "//text()[not(ancestor::script)][not(ancestor::style)][not(ancestor::noscript)][not(ancestor::form)]", xmlValue)

plain.text
