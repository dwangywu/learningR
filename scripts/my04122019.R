#April 12,2019
#initialize a cats data frame
cat<-data.frame(coat=c("calico","black","tabby","tabby"),weigth=c(2.1,5.0,3.2,2.3),like_string=c(1,0,1,1))
cats <- data.frame(coat = c("calico", "black", "tabby"), 
                   weight = c(2.1, 5.0,3.2), 
                   likes_string = c(1, 0, 1))
write.csv(cats,file="data/feline.csv")
cats$weight
cats$coat

cats$weight+2
cats
cats$weight+cats$coat
#what type of variable?
typeof(cats$weight)
typeof(3)
typeof(1+1i)
typeof(TRUE)
typeof("apple")
#what class is?
class(cat)
typeof(cat)
#let's talk about vectors
#logical
my_vector<-vector(length = 3)
my_Vecotr
#another vector
another_vector<-vector(mode="character",length=3)
another_vector
#another exploratory command
str(another_vector)
str(cat)
#make a new vector
combine_vector<-c(2,6,3)
combine_vector
typeof(combine_vector)
typeof(cats$likes_string)
typeof(cats$coat)
str(combine_vector)
quiz_vector<-c(2,6,'3')
quiz_vector
typeof(quiz_vector)
coercion_vector<-c('a',TRUE)
coercion_vector
quiz_vector<-c(2,6,FALSE)
quiz_vector
char_coerced_to_num<-as.numeric(quiz_vector)
char_coerced_to_num
#useful coercion
cats$weight
typeof(cats$likes_string)
cats$likes_string<-as.logical(cats$likes_string
                              )
cats
#appending
ab_vector<-c("a","b")
combine_example<-c(ab_vector,"SWC")
combine_example
#populate quickly
mySeries<-1:10
mySeries
coat<-c('tabby','tortoiseshell','tortoiseshell','black')
coat
CATegories<-factor(coat)
CATegories
cat1<-factor(cat$weight)
cat1
cat2<-factor(cat$like_string)
cat2
#age of cats
age<-c(2,3,5)
cats<-cbind(cats,age)
cats
age1<-c(2,NA,5)
age1
typeof(age1)
another_cat<-list("tortoiseshell",3, TRUE,6)
another_cat
cats<-rbind(cats,another_cat)
cats
levels(cats$coat)
na.omit(cats)
cats<-na.omit(cats)
#remove rows
cats<-cats[4,]
#explore gapminder data set
#read in gapminder
gapminder<-read.csv("data/gapminder_data.csv")
gapminder
#visually inspect our imported data set
#click on gapminder
View(gapminder)
#structure of gapminder
str(gapminder)
#summary
#Factor columns are summarized by the number of items in each level
#numeric and integer columns are summarized by the descriptive statistics
#character columns are summarized by its length,class, and mode
summary(gapminder)
min(gapminder$year)
summary(gapminder$country)
#object type
#what is the object type in the year column?
typeof(gapminder$year)
#what is the object type in the country column?
typeof(gapminder$country)
#length(number of columns)
length(gapminder)
#type of entire gapminder data set
size(gapminder)
dim(gapminder)
list(gapminder)
#number of rows
nrow(gapminder)
#number of rows
ncol(gapminder)
#previewing our data set
#HEAD(remember from bash??)
#preview first few lines
head(gapminder,n=15)
#preview last few lines
tail(gapminder,n=10)
#how would you preview some lines in the middle?
gapminder[850:860,]
#below give me median of population, not middle few line
median(gapminder$pop)
#Challenge #2
#save R script
