# read from HTML source code
Url <- "http://biostat.jhsph.edu/~jleek/contact.html"
con <- url(Url)
lines <- readLines(con, n=100)
nchar(lines[10])
nchar(lines[20])
nchar(lines[30])
nchar(lines[100])
close(con)

# read from fixed width file format
Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
download.file(Url, destfile = "data.for", method="curl")
data <- read.fwf("data.for", widths = c(15,4,9,4,9,4,9,4,9), skip=4)
ncol(data)
nrow(data)
sum(data[,4])
