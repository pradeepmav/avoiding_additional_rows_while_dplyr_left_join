## by below way quickly we can avoid additional rows not required by left_join of dplyr 
## e.g. some times when we are doing left_join(A, B) and if in B (data frame) they are multiple rows by key
## dplyr::left_join adds new rows wherever there are multiple rows in B as shown below
library(dplyr)
df1 <- data.frame(col1 = LETTERS[1:4],
                  col2 = 1:4)
df2 <- data.frame(col1 = rep(LETTERS[1:2], 2),
                  col3 = 4:1)
left_join(df1, df2)  # has 6 rows rather than 4

## in order avoid new rows we can exploit plyr "join" function with match "first" option as shown below
leftjoindf <- plyr::join(df1, df2, by="col1", type="left", match="first")
