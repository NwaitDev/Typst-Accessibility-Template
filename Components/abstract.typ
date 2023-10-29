#let print_abstract(abstract, language:"english") = {

    let oldval = alignment.horizon

    set align(center)

    if language=="english" {
        [*Abstract*]
    } else if language == "french" {
        [*Résumé*]
    } else {
        [*--------*]
    }
    [\ #abstract]
    set align(oldval)
}