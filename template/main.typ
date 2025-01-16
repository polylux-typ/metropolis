// This theme is inspired by https://github.com/matze/mtheme
// The Polylux-port was originally performed by https://github.com/Enivex

// Consider using:
// #set text(font: "Fira Sans", weight: "light", size: 20pt)
// #show math.equation: set text(font: "Fira Math")
// #set strong(delta: 100)
// #set par(justify: true)

#import "@local/polylux:0.4.0": *

#let m-dark-teal = rgb("#23373b")
#let m-light-brown = rgb("#eb811b")
#let m-lighter-brown = rgb("#d6c6b7")
#let background-color = white.darken(2%)

#let slide(title: none, body) = {
  set page(
    header: {
      context if title != none {
        show: move.with(dx: -1em)
        show: block.with(width: 100% + 2em, fill: text.fill, inset: 1em)
        set align(horizon)
        set text(fill: page.fill, size: 1.2em)
        strong(title)
      }
    }
  )

  logic.slide(body)
}

#let new-section-slide(name) = logic.slide({
  utils.register-section(name)
  show: pad.with(20%)
  set text(size: 1.5em)
  name

  utils.polylux-progress( ratio => {
    set grid.cell(inset: (y: 1pt))
    grid(
      columns: (ratio * 100%, 1fr),
      grid.cell(fill: m-light-brown)[],
      grid.cell(fill: m-lighter-brown)[],
    )
  })
})

#let focus-slide(body) = context {
  set page(header: none, footer: none, fill: text.fill, margin: 2em)
  set text(fill: page.fill, size: 1.5em)
  set align(center)
  logic.slide(body)
}

#let alert = text.with(fill: m-light-brown)

#let metropolis-outline = utils.polylux-outline(enum-args: (tight: false,))



#set page(
  paper: "presentation-16-9",
  fill: background-color,
  margin: (top: 3em, bottom: 1em, rest: 1em),
  header: none,
  footer: {
    set text(size: 0.8em)
    show: pad.with(.5em)
    set align(bottom)
    context text(fill: text.fill.lighten(40%))[
      My footer
    ]
    h(1fr)
    context { logic.logical-slide.display() }
  },
)
#set text(
  font: "Fira Sans",
  weight: "light",
  size: 20pt,
  fill: rgb("#23373b"),
)
#show math.equation: set text(font: "Fira Math")
#set align(horizon)

#slide[
  #set page(header: none, footer: none, margin: 3em)

 
  #text(size: 1.3em)[
    *My presentation title*
  ]

  My subtitle

  #line(length: 100%, stroke: .05em + m-light-brown)

  #set text(size: .8em)
  The Author

  Jan 16, 2025

  Some extra info
]

#slide(title: "Agenda")[
  #metropolis-outline
]

#slide(title: [My Title])[
  abc

  $
    integral f(x) dif x
  $
]

#new-section-slide([My first Section])
#new-section-slide([My second Section])
#new-section-slide([My third Section])

#focus-slide[
  You need to focus!
]

