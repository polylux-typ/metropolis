// This theme is inspired by https://github.com/matze/mtheme
// The Polylux-port was originally performed by https://github.com/Enivex

#import "@local/polylux:0.4.0": *

#let bright = rgb("#eb811b")
#let brighter = rgb("#d6c6b7")

#let header(title) = {
  context if title != none {
    let margin = if type(page.margin) == dictionary {
      page.margin
    } else {
      (left: page.margin, right: page.margin)
    }
    let margin-x = margin.left + margin.right
    show: move.with(dx: -margin.left)
    show: block.with(width: 100% + margin-x, fill: text.fill, inset: 1em)
    set align(horizon)
    set text(fill: page.fill, size: 1.2em)
    strong(title)
  }
}

#let footer(content) = {
  set text(size: 0.8em)
  show: pad.with(.5em)
  set align(bottom)
  context text(fill: text.fill.lighten(40%), content)
  h(1fr)
  context { logic.logical-slide.display() }
}

#let outline = utils.polylux-outline(enum-args: (tight: false,))

#let progress-bar = utils.polylux-progress( ratio => {
  set grid.cell(inset: (y: .03em))
  grid(
    columns: (ratio * 100%, 1fr),
    grid.cell(fill: bright)[],
    grid.cell(fill: brighter)[],
  )
})

#let title(the-title) = body => {
  set page( header: header(the-title) )
  body
}

#let new-section(name) = {
  utils.register-section(name)
  set page(header: none, footer: none)
  show: pad.with(20%)
  set text(size: 1.5em)
  name
  progress-bar
}

#let focus(body) = context {
  set page(header: none, footer: none, fill: text.fill, margin: 2em)
  set text(fill: page.fill, size: 1.5em)
  set align(center)
  body
}

#let divider = line(length: 100%, stroke: .1em + bright)

