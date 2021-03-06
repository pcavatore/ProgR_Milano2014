
## ----objects-001---------------------------------------------------------
x <- c(2, 4, 1.3)
y <- c(1, 2, pi)
z <- c(x,y)


## ----objects-002---------------------------------------------------------
i <- 1:3
typeof(i)
d <- c(1.34, pi, 0, NA)
typeof(d)
l <- letters[1:3]
typeof(l)


## ----objects-003---------------------------------------------------------
is.integer(i)
is.double(d)
is.character(l)


## ----objects-004---------------------------------------------------------
as.character(i)
as.numeric(l)


## ----objects-005---------------------------------------------------------
is.vector(i)
is.vector(l)


## ----objects-006---------------------------------------------------------
is.atomic(i)
is.atomic(l)


## ----objects-007---------------------------------------------------------
x <- 1:3
names(x) <- letters[x]
x[2]
x["b"]
x[c(F,T,F)]


## ----objects-008---------------------------------------------------------
this_list <- list(number = 1:3, letters = c("A", "B"), 
                  second_list = list(test = "failed", result = "-2"))


## ----objects-009---------------------------------------------------------
is.vector(this_list)
is.atomic(this_list)


## ----objects-010---------------------------------------------------------
this_list[2]
this_list[[2]]
this_list["letters"]
this_list[c(F,T,F)]


## ----objects-011---------------------------------------------------------
this_list$letters


## ----objects-012---------------------------------------------------------
this_list[["letters", drop = F ]]


## ----objects-013---------------------------------------------------------
x <- 1:9
dim(x) <- c(3, 3)
x


## ----objects-014---------------------------------------------------------
m <- matrix(1:4, ncol = 2)
is.atomic(m)
typeof(m)


## ----objects-015---------------------------------------------------------
is.matrix(m)


## ----objects-016---------------------------------------------------------
dimnames(m) <- list(c("a", "b"), c("x", "y"))
m[,2]
m[,"x"]
m[c(T,F), ]


## ----objects-017---------------------------------------------------------
df <- data.frame(id = 1:5, x = 5:1)


## ----objects-018---------------------------------------------------------
is.list(df)


## ----objects-019---------------------------------------------------------
amount <- c(1, 2, 4, 8, 16)
success <-  c(1, 3, 7, 12, 20)
response <- cbind(dead= success, failure = 20-success)
dd <- data.frame(response = response, amount = amount)
dd


## ----objects-020---------------------------------------------------------
df[,"x"]
df[[1,"x"]]
df$x
df[1,2]
df[df$x == 2, 2]


