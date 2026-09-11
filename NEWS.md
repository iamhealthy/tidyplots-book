## e1.1.5

- New sections

    - Legend position (e.g. areastack plot) (chapter 3.12)

    - Downsample colors (e.g. dot plot) (chapter 4.23)

    - Dumbbell plot with data labels (chapter 5.7)

    - Stacked bar plot with data labels (chapter 6.21)
    - Pie and donut plots with data labels (chapter 6.22)    

- Correcting some typos and other issues

    - Typo: For p4 of `The position of annotated text`: "p4: hjust = 2" -> "p4: hjust = -0.5".

    - For p6 of `Panel and plot padding`: "p6: same plot padding via saving" -> "p6: same plot padding via 'save_plot()'"; For `Display condition combinations in axis labels`, "via inkscape, adobe illustrator" -> "via `inkscape`, `adobe illustrator`"; For p2 of `Plot with a broken axis`, " transform y axis via log10" -> " transform y axis via 'log10'"; For p6 of `Stacked bar plot with error bar`, "p6: via ggplot2" -> "p6: via 'ggplot2'"; For p3 and p4 of section "Color `alpha` *vs.* `saturation` (e.g. bar plot)", "via `alpha`" -> "via 'alpha'", "via `saturation`" -> "via 'saturation'".

    - Add "# Plot" for code chunk 2 of `Show minor ticks (e.g. bar plot)`, `Consistent color order between the horizontal stacked bar and the legend`, `Line plot`, `Relative to control`, `Tick for subgroup`, `Segmented x axis line`, `Stacked bar plot with error bar`, and `Patchwork for combining tidyplots and tidyheatmaps plots` sections.

    - For the figure title of `Pie and donut plots`, "Donut and pie plots." -> "Pie and donut plots.".

    - For `my_style` function of `Set a custom style to reuse (e.g. areastack plot)`, delete the indent below `x |>` row.

    - For `Point shapes` section, "shape An" -> "shape: An"; organize code rows to let the code in one page; add "." to figure title.

    - For p5 of `Histogram` section, `add_histogram(alpha = 0.5)` -> `add_histogram(alpha = 0.5, position = "identity")` ("stack" in default); for p6, `add(ggplot2::geom_density(ggplot2::aes(color = month), position = ggplot2::position_identity(), alpha = 0.2))` -> `add(ggplot2::geom_density(alpha = 0.2))` (for 'redundancy' reason).

    - For `Stacked bar plot with error bar` section, adjust code for the calculation of `study_c`, and then adjust the plot codes accordingly.

## e1.1

- New sections

    - Bracket position and its tip length (e.g. bar plot) (chapter 4.20)
    - The position of annotated text (chapter 4.21)
    - Show minor ticks (e.g. bar plot) (chapter 4.22)

    - Consistent color order between the horizontal stacked bar and the legend (chapter 5.9)
    - Line plot (chapter 5.11)
    
    - Relative to control (chapter 6.16)
    - Tick for subgroup (chapter 6.17)
    - Segmented x axis line (chapter 6.18)
    - Nested bar plot (chapter 6.19)
    - Stacked bar plot with error bar (chapter 6.20)
        
    - `Patchwork` for combining `tidyplots` and `tidyheatmaps` plots (chapter 7.5)    

- Correcting some typos and other issues

    - Typo: "Discrete color schemes" (2nd one) -> "Diverging color schemes" (chapter 1.4.2).
    - Typo: "blue3grown" -> "blue2brown" (chapter 1.4.2).

    - Update p7 and p11 (from `energy_source` to `energy_type`, since `energy_source` contains too many levels to be distinguished by colors.) (chapter 2.2).
    - Update p2 and p6 (from dataset `energy_week`, to `energy`, and use `energy_type`, since `energy_week`/`energy_source` contains too many levels to be distinguished by colors.) (chapter 2.2).
    - Update p4 and p5 with `white_border = TRUE` for points (chapter 2.2).
    
    - Chapter 3.18 and 3.19: 
        - For p1: delete "adjust_size() |>"; add "title = " into "add_title("p1: default style")".         
        - For p2: add "title = " into "add_title("p2: defined global style")".
    - Update `Set a custom style to reuse (e.g. areastack plot)` (from dataset `energy_week`, to `energy`, and use `energy_type`, since `energy_source` contains too many levels to be distinguished by colors.) (chapter 3.20).

    - Typo: "surrond" -> "surround" (chapter 4.2 and 4.3).

    - All four panels have their legends (chapter 5.6).
    
    - Typo: "sequencial" -> "sequential" (chapter 6.10 and 6.11).
    - Update `Change Chinese date axis labels into English ones` (from 2 panels to 3 panels) (chapter 6.12).
    - Typo: "Color each points" -> "Color each point" (chapter 6.14).    

    - For heatmap, adjust colors to c("#994455", "#ffffff", "#004488") for divergent numeric range (chapter 2.2, 5.2, and 5.3) and to c("#f7f8f9", "#004488") for unidirectional data (chapter 5.3 and 7.5), following the suggestion from <https://bsky.app/profile/jmw86069.bsky.social/post/3mry73n3gy22w>        
        - P.S. if we want to visualize the heatmap in grayscale, perhaps using the default continuous color schemes except `colors_continuous_turbo` should be better, since the cognate gray ones are also continuous (chapter 1.4.3).