library(tidyverse)
library(tidycensus)
library(sf)
library(tigris)
library(scales)
library(viridis)
options(tigris_class = "sf")
options(tigris_use_cache = TRUE)
options(scipen = 999,"digits"=3)

# Import data from US Census ----------------------------------------------
data <- rio::import("https://www2.census.gov/programs-surveys/metro-micro/geographies/reference-files/2018/delineation-files/list2.xls") |> select(1:6)

# Clean data file ---------------------------------------------------------
col_names <- data |> 
  slice(2) |>
  pivot_longer(
    cols = 1:6,
    names_to = "old_names",
    values_to = "new_names") |> 
  pull(new_names)

df <- data |> 
  slice(-1,-2) |> 
  set_names(., nm = col_names) |> 
  janitor::clean_names() |> 
  filter(cbsa_code < 50000) |> 
  mutate(GEOID = as.character(paste0(fips_state_code,fips_place_code))) |> 
  arrange(GEOID)

# Download proper TIGER line files ----------------------------------------
us <- states(cb = T, resolution = "20m") |> filter(STATEFP < 57) |> 
  st_transform(3347)
cities <- places(state = us |> pull(STUSPS), cb = T) 
#crsuggest::suggest_crs(us) # best CRS is 3347

# Merge and write as SHP --------------------------------------------------
populations <- get_decennial(year = 2010, variables = "P001001", 
                             state = us |> pull(STUSPS), geography = "place") |> 
  select(1,4) |> rename(pop_2010 = value)

big_cbsa_cities <- populations |>
  inner_join(df, by = "GEOID") |> 
  group_by(cbsa_code) |> 
  filter(pop_2010 == max(pop_2010))

all_principal_cities <- cities |> 
  inner_join(populations, by = "GEOID") |> 
  inner_join(df, by = "GEOID") |> 
  select(GEOID,cbsa_code,principal_city_name,fips_state_code,pop_2010,geometry) |> 
  rename(city_fips = GEOID,
         cbsa_fips = cbsa_code,
         city = principal_city_name,
         st_fips = fips_state_code) |> 
  arrange(city_fips) |> 
  st_transform(3347)

biggest_principal_cities <- cities |> 
  inner_join(big_cbsa_cities, by = "GEOID") |> 
  select(GEOID,cbsa_code,principal_city_name,fips_state_code,pop_2010,geometry) |> 
  rename(city_fips = GEOID,
         cbsa_fips = cbsa_code,
         city = principal_city_name,
         st_fips = fips_state_code) |> 
  arrange(city_fips) |> 
  st_transform(3347)

st_write(all_principal_cities,"data/shp/us_principal_cities.shp")
st_write(all_principal_cities |> st_centroid(),"data/shp/us_principal_city_dots.shp")
st_write(biggest_principal_cities,"data/shp/biggest_principal_cities.shp")
st_write(biggest_principal_cities |> st_centroid(),"data/shp/biggest_principal_city_dots.shp")

# Map the principal cities ------------------------------------------------
ggplot() +
  geom_sf(data = us |> filter(!STUSPS %in% c('HI','AK')) , color = "black", fill = NA) +
  geom_sf(data = all_principal_cities |> filter(!st_fips %in% c('02','15')), 
          color = NA, size = .2, aes(fill = pop_2010)) +
  scale_fill_viridis(option = "plasma", trans = "log", direction = -1, label = comma, 
                     breaks = c(5000, 50000, 500000, 5000000)) +
  labs(fill = "2010 Population",
       title = "Principal Cities in U.S. Core-Based Statistical Areas") +
  theme_void(base_size = 16) +
  theme(plot.title = element_text(hjust = 0.5, face="bold"),
        plot.subtitle = element_text(hjust = 0.5),
        text=element_text(family="IBM Plex Mono"),
        legend.title = element_text(face="bold")) +
  ggsave("principal_cities.png", width = 11, height = 8.5)

ggplot() +
  geom_sf(data = us |> filter(!STUSPS %in% c('HI','AK')) , color = "black", fill = NA) +
  geom_sf(data = all_principal_cities |> filter(!st_fips %in% c('02','15')) |> st_centroid(), 
          shape = 21, color = "black", size = 1.75, aes(fill = pop_2010), alpha = .75) +
  scale_fill_viridis(option = "plasma", trans = "log", direction = -1, label = comma, 
                     breaks = c(5000, 50000, 500000, 5000000)) +
  labs(fill = "2010 Population",
       title = "Principal Cities in U.S. Core-Based Statistical Areas") +
  theme_void(base_size = 16) +
  theme(plot.title = element_text(hjust = 0.5, face="bold"),
        plot.subtitle = element_text(hjust = 0.5),
        text=element_text(family="IBM Plex Mono"),
        legend.title = element_text(face="bold")) +
  ggsave("principal_city_dots.png", width = 11, height = 8.5)

ggplot() +
  geom_sf(data = us |> filter(!STUSPS %in% c('HI','AK')) , color = "black", fill = NA) +
  geom_sf(data = biggest_principal_cities |> filter(!st_fips %in% c('02','15')) |> st_centroid(), 
          shape = 21, color = "black", size = 1.75, aes(fill = pop_2010), alpha = .75) +
  scale_fill_viridis(option = "plasma", trans = "log", direction = -1, label = comma, 
                     breaks = c(5000, 50000, 500000, 5000000)) +
  labs(fill = "2010 Population",
       title = "Principal Cities in U.S. Core-Based Statistical Areas",
       subtitle = "Only Showing Largest Principal City in Each CBSA") +
  theme_void(base_size = 16) +
  theme(plot.title = element_text(hjust = 0.5, face="bold"),
        plot.subtitle = element_text(hjust = 0.5),
        text=element_text(family="IBM Plex Mono"),
        legend.title = element_text(face="bold")) +
  ggsave("central_principal_city_dots.png", width = 11, height = 8.5)

beepr::beep()