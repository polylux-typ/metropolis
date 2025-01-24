// This theme is inspired by https://github.com/matze/mtheme
// The Polylux-port was originally performed by https://github.com/Enivex

#import "@local/polylux:0.4.0": *

#let bright = rgb("#eb811b")
#let brighter = rgb("#d6c6b7")

#let slide-title-header = toolbox.next-heading(h => {
  show: toolbox.full-width-block.with(fill: text.fill, inset: 1em)
  set align(horizon)
  set text(fill: page.fill, size: 1.2em)
  strong(h)
})

#let footer(content) = {
  set text(size: 0.8em)
  show: pad.with(.5em)
  set align(bottom)
  context text(fill: text.fill.lighten(40%), content)
  h(1fr)
  toolbox.slide-number
}

#let outline = toolbox.all-sections((sections, _current) => {
  enum(tight: false, ..sections)
})

#let progress-bar = toolbox.progress-ratio( ratio => {
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
  toolbox.register-section(name)
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

