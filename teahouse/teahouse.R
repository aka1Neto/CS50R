light <- c("green tea", "chamomile tea")
bold <- c("black tea", "rooibos tea")

df <- data.frame(Light = light, Bold = bold)

rownames(df) <- c("Yes", "No")

print("Flavor: ")
flavor <- readline()

print("Caffeine : ")
caffeine <- readline()

if(flavor %in% c('Light', 'Bold')){
  if(caffeine %in% c('Yes', 'No')){
    print(df[caffeine, flavor])

  } else{
    print("Enter either 'No' or 'Yes' for caffeine")
  }

} else{
 print("Enter either 'Light' or 'Bold' for flavor")
}
