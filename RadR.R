########################NNDC
#http://www.nndc.bnl.gov/chart/decaysearchdirect.jsp?nuc=239PU&unc=nds
#Alejandro Sonzogni, NNDC, Brookhaven National Laboratory, sonzogni@bnl.gov

#########################INEL
#http://www4vip.inl.gov/gammaray/catalogs/ge/pdf/u238.pdf
#http://www4vip.inl.gov/gammaray/catalogs/nai/pdf/u-ore.pdf
#David Nigg, (208) 526-7627, Send E-mail 

########################NIST
#http://physics.nist.gov/PhysRefData/XrayMassCoef/ElemTab/z02.html
#http://physics.nist.gov/PhysRefData/XrayMassCoef/ComTab/bakelite.html
#http://physics.nist.gov/PhysRefData/XrayMassCoef/tab1.html
#http://physics.nist.gov/PhysRefData/XrayMassCoef/tab2.html
#Stephen Seltzer
#Radiation Physics Division
#phone: 301-975-5552
#pml-webmaster@nist.gov

library(rvest)

test <- read_html("http://www.nndc.bnl.gov/chart/decaysearchdirect.jsp?nuc=239PU&unc=nds")

html_text(test)
