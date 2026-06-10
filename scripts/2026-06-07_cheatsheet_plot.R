library(tidyplots)

# Read cheatsheet
cheat_sheet <- "data/tidyplots-cheatsheet-v1.pdf" |> 
  magick::image_read_pdf() |> 
  magick::image_rotate(90)

cheat_sheet |> 
  magick::image_info() # the format of png

cheat_sheet_width <- magick::image_info(cheat_sheet)$width
cheat_sheet_height <- magick::image_info(cheat_sheet)$height

cheat_sheet_grob <- grid::rasterGrob(cheat_sheet)

# Set the plot dimention in mm
plot_width <- 210 # the width of a4
plot_height <- 297 # the height of a4

tibble::tibble(
  x = seq(0, 100),
  y = seq(0, 100)) |> 
  tidyplot(
    x = x,
    y = y,
    width = plot_width,
    height = plot_height) |> 
  add_data_points(
    alpha = 0) |> 
  add(ggplot2::annotation_custom(
    grob = cheat_sheet_grob,
    xmin = 0,
    xmax = 100,
    ymin = 0,
    ymax = 100)) |> 
  adjust_size(
    width = plot_width, 
    height = plot_height) |> 
  remove_x_axis() |> 
  remove_y_axis() |> 
  save_plot(
    "last_page.pdf",
    width = 210,
    height = 297, 
    padding = 0)
