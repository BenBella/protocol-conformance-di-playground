# Dependency Injection 

Dependency Injection is a software design pattern in which an object receives other instances that it depends on. It’s a commonly used technique that allows reusing code, insert mocked data, and simplify testing. An example could be initializing a view with the network provider as a dependency.

## Implementation key features

* Vanilla **Protcol extension** + **Injector** + **Mapper** + **Global functions** implementation
* **Swift 4.0** and newer
* **Protocol conformance** allows injecting dependencies and reduces code clutter
* There’s no need for big initializers
* Possibility to mock/stubs objects for tests
* Based on **Singleton** and **Factory** creational patterns. 
* Without **3rd party library**

 ##Swift Compiler Flags

 Set TEST symbol for test targets in the `Swift Compiler - Custom Flags` section, `Other Swift Flags` line.
