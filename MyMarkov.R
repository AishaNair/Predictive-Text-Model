myMarkov=function(corpus){  
  s=str_replace_all(tolower(str_replace_all( corpus, "[[:punct:]]", "")),"[[:digit:]]+","") 
  s=unlist(strsplit(s," "))  
  mc=markovchainFit(s)$estimate  
  plot(mc)  
  return(mc)
}
