fileUrl <- "url"
localname <- "dest.xxx"

# download file
download.file(fileUrl, destfile = localname, method = "curl")

# read CSV
data <- read.csv(localname)

# read XLS(X)
library("xlsx")
data <- read.xlsx(localname, sheetName = "SheetName")

# XML
library("XML")
doc <- xmlTreeParse(fileUrl, useInternalNodes=TRUE)
rootNode <- xmlRoot(doc)
xmlSApply(rootNode, xmlValue) # get all values
xpathSApply(rootNode, "//tag to filter", xmlValue) # get values in tag
