The correct way to handle the transition between Core Foundation and Objective-C objects under ARC is to use `__bridge_transfer`: 

```objectivec
CFStringRef cfString = CFStringCreateWithCString(kCFAllocatorDefault, "Hello, world!", kCFStringEncodingUTF8);
NSString *nsString = (__bridge_transfer NSString *)cfString;
// ... some operations with nsString ...
// No need to release cfString; ARC handles it.
```

Using `__bridge_transfer` tells ARC to take ownership of the Core Foundation object.  Now, ARC will automatically release the memory when `nsString` is no longer needed.  This eliminates the risk of premature release and dangling pointers.