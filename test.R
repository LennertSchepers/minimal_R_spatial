library(leaflet)
library(sf)

fname <- system.file("shape/nc.shp", package="sf")
fname

nc <- st_read(fname)
nc <- st_transform(nc, 4326)

leaflet(nc) %>%
  addTiles() %>%
  addPolygons()
