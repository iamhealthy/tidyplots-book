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