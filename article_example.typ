#import "article_template.typ": article_template
#import "Components/authors.typ": author

#let abstractofthearticle = lorem(59)

#show: doc => article_template(
  title: [A title for this example article],
  subtitle:[And its associated very long subtitle that describes the subject way too precisely compared to the name of the article],
  authors:(
    author("F. Sinatra", "Some Jersey University", email:"example@anemail.com"),
    author("E. K. Waymon", "North Carolina Uni", email:"example@anemail.com"),
    author("A. Winehouse", "London College of sth")
  ),
  abstract: abstractofthearticle,
  cols:2,
  fontsize:10pt,
  doc,
)



= Lists in Typst
\
Let's take a look at lists.
There are 2 kinds of lists:
- itemized lists,
- numbered lists.

The example above is an itemized list. Each item is preceded with an `-` character.
But if you want to enumerate the different steps of a procedure, you may prefer using this kind of list:
+ Step One
+ Step Two
+ step Three
+ Final Step

Such lists are produced by preceding the items by the `+` character.

== Nested lists
It is perfectly possible to nest those lists by indenting the items in the Typst script:

+ A first list
    - one of the items of that list
    - another item of that list
+ A second list
    - one of the items of that list
    - another item of that list

= Introducing images
\
Here is an example of a figure introduced into the document. It took a picture of one of my favorite video game: _Tranistor_ @transistor2014. The main character, Red (as shown on @Red), is a singer who lost her voice after one of her concert was interrupted by a secret organization trying to murder her.

#figure(
    image(
        "Images/transistor_game.jpg",
        width :100%,
        alt: "Red headed woman in modern clothes with holding a sort of glimmering sword. abstract background mixing smoke, geometrical forms and warm colours"
    ),
    caption: [
         Red, the main character of the _Transistor_ video game
    ]
)<Red>

= Doing Math
\
Let's jump right into it with one of my favorite equations:

$  (a+b)^n = sum_(k=0)^n binom(n,k) a^k times b^(n-k) $ <newtonEquation>

The @newtonEquation is one of the most fundamental equations of algebra: Newton's Binomial Theorem.


= Talking about code
\
Since I'm a computer scientist, I just cannot make an example document without putting some examples of code listing in it! So let's see what it would look like.
\
\
A main function for a Java class:
```java
public static void main(String [] args){
    System.out.println("Hello World!");
}
```
\
Yeah, I know Java is so lame. Why not coding in C!
```c
int main(int argc, char** argv){
    int i = 0;
    for (int i; i<argc; ++i){
        printf("arg n°%i : \"%s\"",i,argv[i]);
    }
    return 0;
}
```

= And finally, the good old Lorem Ipsum
\
Because without it, a template document wouldn't be a good template document...
\
#lorem(100)


#bibliography("Bibliography/ArticleBibliography.bib",title: "Biblio")
