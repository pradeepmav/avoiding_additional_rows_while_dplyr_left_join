# avoiding_additional_rows_while_dplyr_left_join
A quick way to avoid the creation of additional rows while left joining two data frames in R. Detailed explaination is provided in plyrjoin.R file

Summary
## in order avoid new rows we can exploit plyr "join" function with match "first" option as shown below
leftjoindf <- plyr::join(df1, df2, by="col1", type="left", match="first")
