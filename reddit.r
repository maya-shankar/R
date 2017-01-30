reddit <- read.csv('reddit.csv')
str(reddit)
dim(reddit)

# table
table(reddit$id)
table(reddit$employment.status)
table(reddit$age.range)

# level
levels(reddit$age.range)

# using ggplot and qplot
qplot(data = reddit, x = income.range)

# ordering variables using factor method
?factor()
reddit$age.range <- ordered(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"))
qplot(data = reddit, x = age.range)