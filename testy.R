# used to test my R package
#
# to install the devtools package do on console 
# install.packages("devtools")
#
# Sadly this will install httr, which I was trying to ensure that my dependency
# was correct in my package.
library(devtools)
install_github("netskink/CSJFD")
library(CSJFD)
hello()
#myTest()
#remove.packages("CSJFD")
# these should fail
#hello()
#myTest()
