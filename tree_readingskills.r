library("party")
data("readingSkills")

head(readingSkills)
tree <- ctree(nativeSpeaker ~ age+shoeSize+score,data = readingSkills[1:106,])
plot(tree)
