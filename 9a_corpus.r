install.packages("tm")
library(tm)

text1 <- c("A rose is a rose is a rose.",
           "A Rose is red, a violet is blue!",
           "A rose by any other name would smell as sweet.")

corpus <- Corpus(VectorSource(text1))

corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("en"))

dtm <- DocumentTermMatrix(corpus)
dtm
term_frequency_matrix <- as.matrix(dtm)
term_frequency_matrix
word_frequencies <- colSums(term_frequency_matrix)
word_frequencies
