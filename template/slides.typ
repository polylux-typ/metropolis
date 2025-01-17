#import "@local/polylux:0.4.0": *
#import "@local/metropolis-polylux:0.1.0" as metropolis
#import metropolis: title, new-section, focus

#set page(
  paper: "presentation-16-9",
  fill: white.darken(2%),
  margin: (top: 3em, rest: 1em),
  footer: metropolis.footer[My footer],
)
#set text(
  font: "Fira Sans",
  // weight: "light", // looks nice but does not match Fira Math
  size: 23pt,
  fill: rgb("#23373b"), // dark teal
)
#set strong(delta: 100)
#show math.equation: set text(font: "Fira Math")
#show raw: set text(font: "Fira Code")
#set align(horizon)
#show emph: it => text(fill: metropolis.bright, it.body)

#slide[
  #set page(header: none, footer: none, margin: 3em)

 
  #text(size: 1.3em)[
    *My presentation title*
  ]

  My subtitle

  #metropolis.divider
  
  #set text(size: .8em, weight: "light")
  The Author

  Jan 16, 2025

  Some extra info
]

#slide[
  #show: title("Agenda")

  #metropolis.outline
]

#slide[
  #new-section[My first section]
]

#slide[
  #show: title[My Title]

  For $f = (dif F) / (dif x)$ we _know_ that
  $
    integral_a^b f(x) dif x = F(b) - F(a)
  $

  See `https://en.wikipedia.org/wiki/Fundamental_theorem_of_calculus`
]

#slide[
  #new-section[My second section]
]

#slide[
  #show: focus
  Something very important
]

