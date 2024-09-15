hot <- c("Espresso", "Decaf Espresso")
cold <- c("Iced Latte", "Decaf Iced Latte")

df <- data.frame(Hot = hot, Cold = cold)

rownames(df) <- c("Caffeinated", "Decaf")

print("Type of coffee: ")
type <- readline()

print("Caffeine: ")
caffeine <- readline()

if(type %in% c("Hot", "Cold")) {
  if(caffeine %in% c("Caffeinated", "Decaf")) {
    print(df[caffeine, type])
  } else {
    print("Enter either 'Caffeinated' or 'Decaf' for caffeine")
  }
} else {
  print("Enter either 'Hot' or 'Cold' for type of coffee")
}
