authors <- read.csv("authors.csv")
books <- read.csv("books.csv")

books$author

#The writer book:
print(books$title[books$author == "Mia Morgan"])

#The musician book:
print(books$title[books$topic == "Music" & books$year == 1613])

#The traveler book:
print(books$title[books$author %in% c('Lysandra Silverleaf', 'Elena Petrova') & books$year == 1775])

#The painter book:
print(books$title[books$pages %in% c(200:300) & books$year %in% c(1990, 1992)])

#The scientist book:
print(books$title[grepl("Quantum Mechanics", books$title)])

#The teacher book:
print(books$title[books$topic == "Education" & books$year %in% c(1700:1799) & books$author %in% authors$author[authors$hometown == 'Zenthia']])

