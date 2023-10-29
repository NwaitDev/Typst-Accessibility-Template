#let print_title(title, subtitle, font:"Droid Sans", colour:black) = {
    if title=="" {
        return []
    }

    set text(
        font: font,
    )

    set par(
        leading: 0.55em
    )

    set align(center)

    rect(
        width: 100%,
        stroke: colour + 1pt,
        
    )[
        #text(
            weight: "black",
            size: 20pt,
        )[
            #title
        ]
        \ 
        #text(
            size: 12pt,
            fill: rgb(0, 0, 0, 150)
        )[
            #subtitle
        ]
    ]
    
}