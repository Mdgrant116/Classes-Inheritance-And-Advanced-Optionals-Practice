## **Classes** 

Classes and structures are a way of defining a blueprint. They are a way to plan out properties and methods, and eventually when we run our app, initialize it into an actual object.

Some important distinctions about classes deal with inheritance, subclasses and superclasses. What it means to override a method, and what it means to call a method from a super class.

To create a class, the first letter of the classes name has to be capital, after that, you open a pair of brackets.

    class Monster {

    } 

You can give this class its own properties, and its own methods.

    class Monster {

    var health = 100
    var attackPower = 10
    var numberOfEyes = 3
    var numberOfLegs = 72

    func attack() {

    // Land a hit

        }

    }

You can now use this blue print to initialize any number of things using the class you just created. For example.

    let dragon = Monster()
    let peopleWhoTalkWithTheirPhoneOnSpeaker = Monster()

When you initialize with the Monster class, they are automatically given the properties you originally created. For example, all of the monsters have been initialized with a health value, and attack value, three eyes, and 72 legs. They can also call the function attack.

Its a lot easier to create these enemies from class blueprints than it would be to create each of them from scratch.

The magic of classes really shine when you use the ability to inherit from a superclass. Think of a super class as a parent. It knows how to do certain things, and has certain properties and methods. If you wanted to add more capabilities to this super class, you could do it by going into that class and adding it there, but there’s another way.

You can create a subclass, and add the functionality there. Think of the subclass as the child of the super class. The super class has taught the subclass everything it needs knows how to do, and now the subclass knows how to do all the things, but where as the older superclass parent may not have known how to use a computer, the subclass, the brilliant child of the superclass knows how to and loves using computers.

Lets say we wanted to make a more powerful monster than the one we had before, but we wanted it to be able to do all the things the original monster class could do, and more. This is where you can use inheritance. It would look something like this. Lets create a Cyclops.

    class Cyclops: Enemy {


    }

Now without any extra lines of code, the Cyclops can already do anything a Monster can do. But we can do more. We want this Cyclops to be able to use its eye to blast its foes with a beam!

    class Cyclops: Enemy {

    func eyeBeam() {

    // Destroys everything ahead of it with a plasma eye beam!

        }

    }

We can also change some of the default properties if we wanted, such as giving it higher health, and less legs, and of course, one eye. We’d create an instance for it just like the dragon.

    let cyclops = Cyclops()

    cyclops.numberOfLegs = 2
    cyclops.numberOfEyes = 1

Now, when creating instances like this from blueprints, sometimes it just doesn’t make sense for a method to do the same thing as its SuperClass. For example, even though peopleWhoTalkWithTheirPhoneOnSpeaker definitely are monsters, they probably shouldn’t be able to attack. Their attack function should probably be overwritten to something else. This is what it looks like when you override a method.

    override func attack() {

    // Yells loudly to speak to your manager

    }

Sometimes you don’t want to just override and action completely though, sometimes you just want to tack on something additional to the method. For example some peopleWhoTalkWithTheirPhoneOnSpeaker actually WILL attack. You do this by calling super.

    override func attack() {

    // Yells loudly to speak to your manager
    super.attack

    }

When you write a function it helps you reduce the amount of code by packaging a bunch of instructions inside one neat package. When you create classes, and inherit from classes, you’re doing the same. Saving yourself from repeating bits of code.



