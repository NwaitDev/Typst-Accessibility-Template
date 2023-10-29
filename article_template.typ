#import "Components/title.typ": print_title
#import "Components/authors.typ": print_authors
#import "Components/abstract.typ": print_abstract
#let article_template(
    title:"",
    subtitle:"",
    authors:(),
    abstract:none,
    cols:1,
    fontsize: 12pt,
    doc,) = [

        #set math.equation(numbering: "(1)")

        #set page(
            paper: "a4",
            margin: (x: 1.8cm, y: 1.5cm),
            background: image("Images/bg_img.jpg")
        )

        #set text(
            font: "DejaVu Sans",
            size: fontsize,
            spacing: 120%,
            ligatures: false,
        )

        #set heading(
            level: 1,
            numbering: "1.a.i"
        )

        #set par(
            justify: true, //default value false
            leading: 0.65em, //default value 65em
            linebreaks: "optimized", // default value "optimized"
            first-line-indent: 0em, //default value 0em
            hanging-indent: 0em //default value 0em
        )

        #show "Typst" : [#box(
            baseline: 0.35em,
            image(
                "Images/typst.png",
                alt: "Typst",
                height: 1.2em,
            )
        )]

        #print_title(title,subtitle)
        #print_authors(authors)
        #if abstract != none {
            print_abstract(abstract)
        }
        #show: rest => columns(cols, rest)

        #doc
    ]


//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#show: doc => article_template(
  title: [Titre de l'article],
  subtitle:[Ceci en est le sous-titre],
  doc,
)

This is some text in Typst and I hope it's going to lead me somewhere.