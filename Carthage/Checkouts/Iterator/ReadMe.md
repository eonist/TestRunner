# Iterator

Array Iterator that can also be used with async tasks

### How does it work
- Async iteration
- Supports forward and backward iteration
- Works on regular Arrays etc

### How do I get it
- Carthage `github "eonist/Iterator"`
- Manual Open `.xcodeproj`
- CocoaPod (Coming soon)

### Basic Example:
```swift
let arrIterator = ArrayIterator(array: [1,2,3,4,5])
while arrIterator.hasNext() { Swift.print(arrIterator.next()) }//1,2,3,4,5
```

### Async Example:
```swift
/**
 * ## Examples:
 * DemoIteratorExample().iterate() //All done: 🎉 2
 */
public class DemoIteratorExample {
   var validItems: [DemoItem] = []
   lazy var arrIterator: DemoIterator = DemoIterator(array: [DemoItem(), DemoItem(), DemoItem()]) {
      print("All done: 🎉 \(self.validItems.count)")// the result varies between a count of 0 and 3
   }
   public init() { /* Do nothing */ }
   public func iterate() {
      arrIterator.iterate { item, success in
         if success {
            self.validItems.append(item)
            self.iterate()
         } else {
            self.iterate()
         }
      }
   }
}
```

### Todo:
- Add the new native swift result type
