random_character <- function() {
  return(sample(letters, 1))
}

print_sequence <- function(length=20) {
  for (i in 1:length){
    Sys.sleep(.25)
    cat(random_character())
  }
}

print_sequence()