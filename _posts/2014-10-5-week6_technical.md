---
layout: post
title: Liam's Blog
---
 ## Variables and Their Scopes
  Take a look at the code below.

    ```
      def method
        puts x
      end

     x = 10
          method

     # => Error: undefined local variable or method `x'
        ```

      Why would this return an error?
      The answer is Variable Scope.
      The Scope of a variable determines where it is accessible. Not all variables are accessible everywhere through out a program.
      Take a look at this.

        ```
          def method
            x = 50
            puts "x is equal to #{x}"
          end

     x = 10
          method
          puts "x is equal to #{x}"

     # => "x is equal to 50"
          # => "x is equal to 10"
        ```

      What is happening here is that x is a local variable. Meaning it is only present within a local area of code. This means the x within #method is only accessible within method. The x outside of #method is only accessible outside method.
      All basic variables in Ruby are considered local.
      There are four kinds of Scope for variables: Local, Global, Object, and Class.
      We've seen how Local scope works, let's take a look at Global.

        ```
          def method
            puts "$x within method is eqaul to #{$x}""
          end

     $x = 10
          puts "$x outside the method is equal to #{$x}"
          method

     # => "$x outside the method is equal to 10"
          # => "$x outside the method is equal to 10"
        ```

      What's happening here should be pretty clear. A Global variable is accessible from anywhere within an application. In fact we could have easily defined $x within method, and then called it outside of it and gotten the same resutls. These variables must be defined with a $ preceeding the variable name. This can be a useful tool, but it is not common practice. It doesn't mesh well with an Object Oriented approach.
      Now let's take a look at a Class Variable (also called an Instance Variable).

        ```
          class Box
            def initialize(contents)
              @contents = contents
              last_item = contents.last
            end

       def show_contents
                puts @contents
              end

       def show_last_item
                puts last_item
              end
            end

     test_box = Box.new(["books", "notepads", "records"])
          test_box.show_contents
          # => books
          # => notepads
          # => records

     test_box.show_last_item
          # => Error: undefined local variable or method `last_item'
        ```

      An Object Variable (or Instance Variable) is accessible within an instance of a class. Any method within the class can access these variables. As you can see above, initializing a local variable does not make it accessible to the method later in the class. Instance Variables are an important tool when building complicated classes that have methods that need to interact with one another. These variables must be defined with an @ symbol preceeding the variable name.
      Finally let's look at a Class Variable.
      Class Variables are accessible within the current class, and are denoted with @@ before a variable name. They are helpful if you need to store information that is relevant to all instances of a specific class. A good example of this is keeping track of the amount of instances of a certain class.
        ```
          class Box
            def initialize
              if defined?(@@number_of_boxes)
                @@number_of_boxes += 1 # increases the count by 1 if the variable is already defined
              else
                @@number_of_boxes = 1 # sets the variable equal to 1 at the first instance of the class
              end
            end

       def self.count # create an class method to check on this class variable
                @@number_of_boxes
              end
            end

     box_1 = Box.new
          box_2 = Box.new
          box_3 = Box.new

     Box.count
          # => 3
        ```

I hope that this helps you understand how Variable Scope works and when to use which kind. The best way to learn this is to experiment. Type the examples I've made into irb, or test files and run them. Then change them up, try new things, you'll start to get it before you even know it.
