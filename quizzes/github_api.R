library(httr)
myapp <- oauth_app("github",key="",secret = "")
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
gtoken <- config(token = github_token)


library(jsonlite)
Url <- "https://api.github.com/users/jtleek/repos"
con_repo <- GET(Url,gtoken) # the response is in JSON format
stop_for_status(con_repo)
data <- content(con_repo)
str(data)
data <- fromJSON(data)

