# walkthru of the quickstart of httr
#
# From this page
# https://cran.r-project.org/web/packages/httr/vignettes/quickstart.html
#
# John F. Davis
# 2017/07/28



library(httr)
r = GET("http://httpbin.org/get")
# the response can be shown on console using
# r

# get status code via
status_code(r)
# 200 is normal

# headers(r)
# shows the headers


# str(content(r))
# returns a list of the content. eg. headers, host, source, origin ip,
# url

# httr verbs
# GET() -  get a page
# HEAD()
# POST() - submit a form
# PATCH() - used by web api's
# PUT() - used by web api's
# DELETE() - used by web api's


# the status code
r = GET("http://httpbin.org/get")
# get informative description
# http_status(r)
# or raw code
# r$status_code
