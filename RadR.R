library(rvest)

test <- read_html("http://www.nndc.bnl.gov/chart/decaysearchdirect.jsp?nuc=239PU&unc=nds")

html_text(test)
