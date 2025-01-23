# Objective-C ARC and Core Foundation Memory Management Error

This repository demonstrates a common error in Objective-C related to memory management when working with Core Foundation objects and ARC (Automatic Reference Counting).

The `bug.m` file contains code that exhibits the issue: premature release of a Core Foundation object before the corresponding Objective-C object is finished with it.

The solution, shown in `bugSolution.m`, illustrates the correct approach using `__bridge_transfer` to properly transfer ownership and prevent memory corruption.