#set page(
  background: context {
    let page-num = counter(page).get().first()

    if calc.odd(page-num) {
      place(
        top + right,
        dx: -2mm,
        dy: 12mm,

        rect(
          width: 2.2mm,
          height: 80%,

          fill: gradient.linear(
            angle: 90deg,

            rgb("#5B6C8F").transparentize(10%),
            rgb("#9FB4D1").transparentize(35%),
          ),
        ),
      )
    } else {
      place(
        top + left,
        dx: 2mm,
        dy: 12mm,

        rect(
          width: 2.2mm,
          height: 80%,

          fill: gradient.linear(
            angle: 90deg,

            rgb("#5B6C8F").transparentize(10%),
            rgb("#9FB4D1").transparentize(35%),
          ),
        ),
      )
    }
  }
)