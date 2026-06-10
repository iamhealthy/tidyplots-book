library(tidyplots)

# set a df
df <- tibble::tibble(
  x = seq(0, 176 * 2, length.out = 100),
  y = seq(0, 250, length.out = 100))

# read a table view
tbl_view <- "images/left_right_pattern_table-view.png" |> 
  magick::image_read()
tbl_view_width <- magick::image_info(tbl_view)$width
tbl_view_height <- magick::image_info(tbl_view)$height
tbl_view_grob <- tbl_view |> 
  grid::rasterGrob()

# read a plot
pt <- "images/violin.png" |> 
  magick::image_read()
pt_width <- magick::image_info(pt)$width
pt_height <- magick::image_info(pt)$height
pt_grob <- pt |> 
  grid::rasterGrob()

# plot
df |> 
  tidyplot(x = x, y = y) |> 
  adjust_size(
    width = 176 * 2 / 10,
    height = 250 / 10,
    unit = "cm") |> 
  add_annotation_rectangle( # left page and right page
    xmin = c(0, 178),
    xmax = c(174, 176 * 2),
    ymin = 0,
    ymax = 250,
    color = "#bbbbbb",
    alpha = 0,
    linewidth = 2) |> 
  add_annotation_text(, # here begin the left page
    text = "left page",
    x = 176 / 2,
    y = 230,
    fontsize = 30,
    fontface = "bold") |> 
  add(ggplot2::annotation_custom(
    tbl_view_grob,
    xmin = 20,
    xmax = 176 / 2 * 1.1,
    ymin = 220 - (176 / 2 * 1.1 - 20) * (tbl_view_height / tbl_view_width),
    ymax = 220
  )) |> 
  add_annotation_text(
    text = "p1 <- study |>\n  tidyplot(x = treatment, y = score, color = treatment) |>\n  some codes",
    x = 20,
    y = 115,
    family = "mono",
    fontsize = 10,
    fontface = "bold",
    hjust = 0) |> 
  add_annotation_text(
    text = "p2 <- study |>\n  tidyplot(x = treatment, y = score, color = treatment) |>\n  some codes",
    x = 20,
    y = 90,
    family = "mono",
    fontsize = 10,
    fontface = "bold",
    hjust = 0) |> 
  add_annotation_text(
    text = "p3 <- study |>\n  tidyplot(x = treatment, y = score, color = treatment) |>\n  some codes",
    x = 20,
    y = 65,
    family = "mono",
    fontsize = 10,
    fontface = "bold",
    hjust = 0) |> 
  add_annotation_text(
    text = "p4 <- study |>\n  tidyplot(x = treatment, y = score, color = treatment) |>\n  some codes",
    x = 20,
    y = 40,
    family = "mono",
    fontsize = 10,
    fontface = "bold",
    hjust = 0) |>  
  add_annotation_text(
    text = "...",
    x = 20,
    y = 25,
    family = "mono",
    fontsize = 20,
    fontface = "bold",
    hjust = 0) |> 
  add_annotation_text( # here begin the right page
    text = "right page",
    x = 176 + 176 / 2,
    y = 230,
    fontsize = 30,
    fontface = "bold") |> 
  add(ggplot2::annotation_custom(
    pt_grob,
    xmin = 176 + 12,
    xmax = 176 * 2 - 10,
    ymin = 17,
    ymax = 17 + (176 * 2 - 12 - 176 - 10) * (pt_height / pt_width))) |> 
  add_annotation_text(
    text = c("even page", "even page + 1"),
    x = c(176 / 2, 176 + 176 / 2),
    y = 10,
    fontsize = 15) |> 
  adjust_x_axis(limits = c(0, 176 * 2)) |> 
  adjust_y_axis(limits = c(0, 250)) |> 
  adjust_caption(
    caption = "for the physical copy",
    fontsize = 20,
    face = "italic") |> 
  add(ggplot2::theme(
    plot.margin = ggplot2::margin(0, 0, 0, 0))) |> 
  remove_x_axis() |> 
  remove_y_axis() |> 
  save_plot(
    filename = "left_right_pattern_v1.0.png",
    padding = 0)
