#set math.equation(numbering: "(1)")


#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 1.5cm),
)

#set text(
  font: "DejaVu Sans",
  size: 12pt
)

#set par(
  justify: true, //default value false
  leading: 0.65em, //default value 65em
  linebreaks: "optimized", // default value "optimized"
  first-line-indent: 0em, //default value 0em
  hanging-indent: 0em //default value 0em
)

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

= My First Typst Document
\
In this report, we well see a few Typst features that may be useful to write a report.
So what now ?

== Lists in Typst
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
It is perfectly possible to nest those lists by indenting the items in the Typst script:

+ A first list
    - one of the items of that list
    - another item of that list
+ A second list
    - one of the items of that list
    - another item of that list

== Introducing image
\
Here is an example of a figure introduced into the document. It took a picture of one of my favorite video game: _Tranistor_ @transistor2014. The main character, Red (as shown in Figure @Red), is a singer who lost her voice after one of her concert was interrupted by a secret organization trying to murder her.

#figure(
    image("Images/transistor_game.jpg", width :70%),
    caption: [
         Red, the main character of the _Transistor_ video game
    ]

)<Red>

== The heart of your documents : Math
\
Let's jump right into it with one of my favorite equations:

$  (a+b)^n = sum_(k=0)^n binom(n,k) a^k times b^(n-k) $ <newtonEquation>

The @newtonEquation is one of the most fundamental equations of algebra: Newton's Binomial Theorem.


== Talking about code
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

== And finally, the good old Lorem Ipsum
\
Because without it, a template document wouldn't be a good template document...
\
#lorem(100)

#bibliography("Bibliography/ArticleBibliography.bib",title: "Biblio")
