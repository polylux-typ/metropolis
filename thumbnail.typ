#set page(width: auto, height: auto, margin: 0pt)
#let num = int(sys.inputs.num)
#grid(
  columns: 2,
  gutter: 1cm,
  ..range(1, num + 1).map( i => image("tmp-thumbnail/slide-" + str(i) + ".png")),
)
