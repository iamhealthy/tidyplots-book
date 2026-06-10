library(tidyplots)

# The size of ISO B5: 176 mm * 250 mm 
# https://en.wikipedia.org/wiki/International_standard_paper_sizes
# I could not change papersize via _quarto.yml 
# (the default seems to be a4), so I still use a4 (210 mm * 296 mm). 

# Read R logo
r_logo <- "images/Rlogo.png" |> 
  magick::image_read()

r_logo_width <- magick::image_info(r_logo)$width
r_logo_height <- magick::image_info(r_logo)$height

r_logo_grob <- r_logo |> 
  grid::rasterGrob()

# Read tidyplots logo
tidyplots_logo <- "images/tidyplotslogo.svg" |> 
  magick::image_read()

tidyplots_logo_width <- magick::image_info(tidyplots_logo)$width
tidyplots_logo_height <- magick::image_info(tidyplots_logo)$height

tidyplots_logo_grob <- tidyplots_logo |> 
  grid::rasterGrob()

# Set the plot dimention in mm
plot_width <- 210 # the width of a4
plot_height <- 297 # the height of a4
plot_w_h <- plot_width/plot_height

# Set the occupied width of grob
width_occupy <- plot_width * 0.23

tibble::tibble(
  x = seq(0, 100),
  y = seq(0, 100)) |> 
  tidyplot(
    x = x, 
    y = y,
    width = plot_width,
    height = plot_height,
    paper = "#bbccee") |> 
  add_annotation_text(
    text = "Tidyplots",
    x = 50,
    y = 82,
    family = "mono",
    fontsize = 45,
    fontface = "bold",
    color = "#bb5566") |> 
  add_annotation_text(
    text = "publication-ready plots\nfor scientific papers",
    x = 50,
    y = 72,
    fontsize = 35,
    fontface = "bold") |> 
  adjust_x_axis(
    limits = c(0, 100)) |> 
  adjust_y_axis(
    limits = c(0, 100)) |> 
  add_annotation_text(
    text = "a cookbook (1st edition)",
    x = 50,
    y = 63,
    fontsize = 25,
    fontface = "bold.italic",
    color = "#A0643C"
  ) |> 
  add_annotation_text(
    text = "Kang Wu",
    x = 50,
    y = 10,
    fontsize = 18) |> 
  add_annotation_text(
    text = "Copyrighted Material",
    x = 50,
    y = 8
  ) |> 
  add(ggplot2::annotation_custom(
    grob = r_logo_grob,
    xmin = 8,
    xmax = 8 + width_occupy/2*0.75,
    ymin = 85,
    ymax = 85 + width_occupy/2*0.75 * (r_logo_height/r_logo_width) * plot_w_h)) |> 
  add(ggplot2::annotation_custom(
    grob = tidyplots_logo_grob,
    xmin = 50 - width_occupy * 1,
    xmax = 50 + width_occupy * 1,
    ymin = 17,
    ymax = 17 + width_occupy * 1 * (tidyplots_logo_height/tidyplots_logo_width) * plot_w_h)) |> 
  adjust_theme_details(
    plot.margin = ggplot2::margin(
      t = 0,
      r = 0,
      b = 0,
      l = 0,
      unit = "mm")) |> 
  remove_x_axis() |> 
  remove_y_axis() |> 
  save_plot(
    "tidyplots_cover_v1.0.png", 
    view_plot = TRUE,
    padding = 0,
    width = 210,
    height = 297) |> 
  save_plot("tidyplots_cover_v1.0.pdf",
    view_plot = FALSE,
    padding = 0,
    width = 210, # the width of a4 paper
    height = 297) # the height of a4 paper
