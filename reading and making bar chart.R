#replace the filepath below with where your data lives. remember the double \\s
MyData <- read.csv(file="C:\\Users\\HaddadAE\\Git Repos\\exploring r\\data\\FiveFac.csv", header=TRUE, sep=",")
print(class(MyData)) #to confirm it's a data frame: 
#this is a good resource for reading about data frames, which is what your data is
#https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html
#here are your column names
print(colnames(MyData))
#this gives you counts by a variable and puts them in a new variable called counts
counts <- table(MyData$F_SEX_FINAL)
print(counts)
#here's some documentation on counts and bar charts
barplot(counts, main="People By Sex",
        xlab="Men and Women")
#this is a crosstab
crosstab <- table(MyData$RELIMP_W30, MyData$F_SEX_FINAL)
#this graphs it
barplot(crosstab, main="People By Sex and RELIMP",
        xlab="Men and Women by Relimp", beside=T)