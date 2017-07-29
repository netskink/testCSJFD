# used to test my R package install via github and the dependency install
# John F. Davis
# 2017/07/28
#
# to install the devtools package do on console 
# install.packages("devtools")
#
# Sadly this will install httr, which I was trying to ensure that my dependency
# was correct in my package.
#
# However, using the hashmap dependency made my package failed to build
# since it was not installed.  But, when I listed the dependency and the subsquent
# Rcpp as dependencies for the package, when I did not have them installed
# but my package source was in git, the install of my package from git,
# did indeed install both of them.  Afterwards, I could build my package.
library(devtools)
install_github("netskink/CSJFD")
library(CSJFD)
# test the built-in 
#myTest1()
#remove.packages("CSJFD")
# these should fail
#myTest1()

URL1="http://httpbin.org/get"
URL2="http://echo.jsontest.com/fieldkey/fieldvalue/purpose/test"
r1 = getData(URL1)
r2 = getData(URL2)
print(r1$status_code)
# we added a custom header,make sure its there
# note url2 does not return a custom header
typeof(content(r1)$headers['Customheader'])
print(content(r1)$headers$Customheader)
typeof(content(r1)$headers$Customheader)