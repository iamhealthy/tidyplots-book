#show: doc => {
  set page(
    foreground: place(
      center + horizon,
      rotate(
        315deg,
        text(
          90pt,
          fill: rgb("#bbbbbb").transparentize(80%),
          smallcaps[Confidential],
        ),
      ),
    ),
  )

  doc
}