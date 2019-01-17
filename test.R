library(leaflet)
library(sf)

fname <- system.file("shape/nc.shp", package="sf")
fname

nc <- st_read(fname)

leaflet(nc) %>%
  addTiles() %>%
  addPolygons()
