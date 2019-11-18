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

## **Structs VS Classes**

Structs are like Jon Snow, unable in inherit, while classes are more like Robb Stark, able to inherit all that its parent can provide. 

Structs give you a free initializer, so you don’t have to write an init method, however with classes, if you don’t specify the type or give your property a value, it will tell you that it has no initializers. With classes you have to provide the init yourself.

After you write the init method, when you initialize that blueprint, you will have to provide the values you’re initializing.

Classes are passed by reference, so if you’re not careful, you could be changing something unintentionally. This is why classes are considered more error prone than structs.

In a struct, you’re reminded when you mutate something, because there will be a mutating keyword. When mutating a struct, its destroys the old struct, and creates a new one, so you can’t use a let constant when initializing it. 

Structs are passed around by value, so if I had a pizza, instead of giving you my pizza, I’d have to make another one for you. Classes are different. Instead of giving you your own pizza, I’d tell you where mine was, and if you ate a slice, I’d have one less slice. 

With structs, if multiple people wanted pizza, they’d all have their very own pizza, and if they added toppings, it wouldn’t effect mine. But if my pizza were a class, and someone truly devious decided to cover it in chocolate, I’d send my newly created Cyclops to decimate them with its eyeBeam attack because that’s our only pizza, and its covered in chocolate.

This is why apple advises that you always default to creating a struct whenever you need a blueprint to create new objects, but if you find you need inheritance, you can turn your structure into a class.

## **Optional Binding, Chaining, And Nil Coalescing**

Here are five different ways of working with optionals in Swift.

1. Force Unwrapping

Requires us to know with 100% certainty that our value will not be nil or the app will crash. Probably the least safe way of working with optionals.

    myOptional!

2. Check For Nil Value

A slightly safer way to deal with optionals would be to unwrap them. 

    if myOptional != nil {

        // Do the thing

    } else {

        // Where you would handle a nil value
        
        }

This way, it skips this code block if the value is nil, but this whole option is pretty wordy, and there are a lot of extra lines of code when there is a better way. Optional Binding.

3. Optional Binding

With this option, you can create a new constant, and bind the value of the optional to it. We can now work with the safe version without worry.

    if let safeOptional = myOptional {

        let text: String = safeOptional

    }

But this just skips the code block if the value is nil, there is another way to go about this if we wanted to provide a default value if the value is nil. Nil Coalescing.


4. Nil Coalescing Operator 

What it does is it checks if the optional is nil. If its not nil, its going to use the value, but if it is nil, its going to use the provided default value.

    let text: String = myOptional ?? “I am the default value”

5. Optional Chaining

All of those options cover if you have a simple optional value, but there are certain cases where you’ll have an optional class, or an optional struct. Because our optional has some methods and properties that are accessed using the . notation, in order to get to it, we add a question mark.

        myOptionalClass?.myProperty

What this says is if this object is not optional, continue along this chain and access it.







