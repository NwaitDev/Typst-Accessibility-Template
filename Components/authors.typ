#let author(name,institute, email:none) = (
    name:name,
    institute:institute,
    email:email
)

#let print_authors = (authors) => {

    let oldalign = alignment.horizon
    set align(center)

    let count = authors.len()
    if count > 0 {
        
        let ncols = calc.min(count, 3)
        grid(
            columns: (1fr,) * ncols,
            row-gutter: 10pt,
            ..authors.map(auth => 
            [
                *#auth.name* \
                #auth.institute \
                #if auth.email != none {
                    link("mailto:" + auth.email)
                }
            ]),
        )
        
    } else {
        [*Unknown author(s)*]
    }

    set align(oldalign)
}