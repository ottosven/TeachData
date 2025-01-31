## ########################################
## FRED-QD and FRED_MD from the BVAR package (as of 2023)
## ########################################

## The FRED-QD and FRED-MD database (as of 2021):
library(BVAR)
data(fred_md, package="BVAR")
data(fred_qd, package="BVAR")

fred.qd = ts(fred_qd, start = c(1959,1), frequency = 4)
fred.md = ts(fred_md, start = c(1959,1), frequency = 12)
usethis::use_data(fred.qd, overwrite = TRUE)
usethis::use_data(fred.md, overwrite = TRUE)
