thumbnail:
    mkdir -p tmp-thumbnail
    typst compile template/slides.typ tmp-thumbnail/slide-{p}.png
    typst compile --input num=$(ls tmp-thumbnail | wc -l) thumbnail.typ thumbnail.png
    oxipng thumbnail.png
    rm -rf tmp-thumbnail
