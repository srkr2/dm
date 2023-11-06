text1 <- c("A rose is a rose is a rose.",
"A Rose is red, a violet is blue!",
"A rose by any other name would smell as sweet.")
text_ntype(text1, collapse = TRUE)

print("Unique Terms present in the entire 3 lines")
text_types(text1, collapse = TRUE)
print(" Term frequency matrix")
term_matrix(text1)
print(" Each line after it is tokenized")
text_tokens(text1)
print(" Unique terms in each line")
text_types(text1)
print(" Term matrix only for the selected terms")
# select certain terms
term_matrix(text1, select = c("rose", "red", "violet", "sweet"))
print("Term counts in the form of a Data Frame")
term_counts(text1)
print("Term matrix after grouping lines")
# specify a grouping factor
term_matrix(text1, group = c("BBB", "AAA", "BBB"))
text <- "love loving lovingly loved lovely love"
text_tokens(text, stemmer = "en") # english stemmer
text_stats(text1)
term_stats(text1)
