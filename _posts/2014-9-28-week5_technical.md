---
layout: post
title: Liam's Blog
---
## Using Classes
Classes are an extremely useful tool in Ruby’s Object Oriented repertoire. As programs grow in complexity, objects allow the programmer to maintain a level of simplicity.
A Class is a blueprint for an object. Defining a class is the way you define how an object will be constructed and what methods will be available to it.
Here is a very simple example of a class in Ruby, one that defines a class Dictionary that can accept new words, return an alphabetical list of all its words, check to see if it has a word, and find words it includes.
 [Dictionary Class](../imgs/dictionary_class.png)
Pretty simple right? At this point most of these lines of code should be pretty familiar, or at least easily grasped.
The new ones are probably `class`, `initialize`, attr_accessor`, and the `@` symbol in the variable `@entries`.
`class Dictionary` opens up a class called Dictionary for editing. Everything between this command and `end` will define the behavior and methods of an object of class Dictionary.
`initialize` is a constructor function. To create a new object of class Dictionary we would use the command `Dictionary.new`. When we use that, the initialization function is called. In this case what happens is an empty hash called @entries is created within the new object.
`attr_accessor` is short hand for creating reading and writing functions for the object. In this case if we had an object called oxford which was of class Dictionary and we used oxford.entries it would return the hash @entries.
Enough of this silly @ symbol nonsense. What is it? Defining a variable with an @ preceding its name turns it into an object variable (also called an instance variable). Variables like this are accessible by any method within the object. This simplifies our method writing, because if we were using just the variable name `entries` that would mean something different to each method, and none of the methods would return what we want them to.
Finally each of the methods you see above are called instance methods. They are accessible only be objects of the class Dictionary. So back to our object oxford: if we were to type `oxford.add({"llama" => "a domesticated South American camelid"})` and then typed `oxford.keywords` the program would return the word "llama"!
This methods act on the object, not the class itself. `Dictionary.add` would only return an error.
I hope that this helps you understand classes and how to use them at least a little bit.
Other DBC-ers. If you have any feedback of how to improve this post, please let me know!
