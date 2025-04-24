# Elixir Object-Oriented Problem

## Thomas Carriero - 730510525

### Overview
This Elixir program simulates object-oriented programming principles by using Elixir's functional and actor-based features. Unlike Java, which uses classes and inheritance, Elixir leverages processes and message passing to achieve similar outcomes.

### Approach
1. Encapsulation
In Elixir, processes encapsulate state. Each "object" is represented by a process that holds its state and behavior. For instance, the Animal process holds a name and can respond to messages like :speak. This encapsulation ensures that the internal state is protected and can only be modified through defined interactions.

2. Abstraction
Abstraction is achieved by defining a set of messages that an object can respond to, without exposing the internal workings. The Animal module defines a :speak message, but the actual implementation is deferred to the specific animal types, like Dog or Cat, which define their own responses to :speak.

3. Inheritance
Elixir does not support traditional class-based inheritance, so I used composition and message passing to simulate this. The Dog and Cat modules are separate entities that define their own state and behavior. While they don't inherit from a common superclass, they share a common interface by responding to the same messages, allowing for polymorphic behavior.

4. Polymorphism
Polymorphism is achieved by sending the same message (:speak) to different processes (Dog and Cat). Each process handles the message according to its own implementation, allowing for different behaviors under a common interface.


The Java Animal class is represented by the Animal module, which defines the common interface (:speak). The Java Dog and Cat classes are represented by the Dog and Cat modules in Elixir, each implementing the :speak message in their own way. The Java Main class is represented by the Main module, which spawns the Dog and Cat processes and sends them the :speak message.

### Limitations
While this approach simulates OOP principles, it does not provide true inheritance or class-based structures. Elixir's functional nature encourages a different design philosophy, focusing on processes and message passing rather than classes and objects. I personally like the way we can implement object-like processes in Elixir since we don't have to worry about some of the intricacies that come with traditional class-based design.

Run the code with `iex` and then compile each file with `c("file.ex")`, ensuring to start with `animal.ex` and end with `main.ex`.