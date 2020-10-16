library(tidyverse)
library(tigris)
options(tigris_class = "sf")
options(tigris_use_cache = TRUE)

hist_cty_pops <- function(state) {
  st <- state
  st_lower <- str_to_lower(st)
  cty_list <- counties(state = st, cb = T) %>% arrange(GEOID) %>% pull(GEOID)
  n_ctys <- length(cty_list) %>% as.numeric()
  st_url <- sprintf("https://www.census.gov/population/www/censusdata/cencounts/files/%s190090.txt",st_lower)
  st_txt <- read.delim(url(st_url)) %>% slice(-(1:7)) %>% rename(var =1) %>% pull()
  y <- str_split(st_txt,pattern = "[ \t]+", n = 2) %>% 
    do.call(rbind.data.frame, .) %>% 
    rename(fips = 1, data = 2) %>% 
    filter(fips %in% cty_list)
  suppressWarnings({
    d1 <- y %>% slice(1:n_ctys) %>% 
      separate(data,c('pop_1990','pop_1980','pop_1970','pop_1960','cty'),"[ \t]+") %>% 
      select(-cty) %>% rename(fips1 = fips)
    d2 <- y %>% slice((n_ctys+1):(n_ctys*2)) %>% 
      separate(data,c('pop_1950','pop_1940','pop_1930','pop_1920','cty'),"[ \t]+") %>% 
      select(-cty) %>% rename(fips2 = fips)
    d3 <- y %>% slice(((2*n_ctys)+1):(n_ctys*3)) %>% 
      separate(data,c('pop_1910','pop_1900','cty'),"[ \t]+") %>% 
      select(-cty) %>% rename(fips3 = fips)})
  dx <- cbind(d1,d2,d3) %>% 
    mutate(test1 = if_else(fips1 == fips2,'T','F'),
           test2 = if_else(fips3 == fips2,'T','F'),
           test3 = if_else(test1 == test2,'T','F'),
           test4 = if_else(test3 == 'T','Pass','Fail'))
  df_pops <- dx %>% 
    select(fips1:pop_1900,-fips2,-fips3) %>% 
    rename(cty_fips = fips1) %>% 
    as.data.frame()
  df_pops
}

st_list <- states(cb = T) %>% 
  filter(GEOID < 57, # removes Puerto Rico & other provinces not in the data 
         !STUSPS %in% c('AK','CO','FL','SD')) %>% # these states 'broke' my code
  arrange(GEOID) %>% pull(STUSPS) 

df <- hist_cty_pops("OH") # Test it out for the Buckeye State

for (i in st_list) {
  nam <- paste0('pop_',i)
  assign(nam, hist_cty_pops(i))
}
rm(hist_cty_pops) 

df <- mget(ls(pattern="pop_*")) %>% bind_rows() %>% 
  write_csv("data/historical_county_populations.csv")