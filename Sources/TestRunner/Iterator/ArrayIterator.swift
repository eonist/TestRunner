import Foundation
/**
 * This class provides an iterator for an array of elements of type `T`.
 * - Note: The methods cannot be in an extension because of generic requirements.
 * ## Examples:
 * var arrIterator = ArrayIterator(array: [1, 2, 3, 4, 5])
 * while arrIterator.hasNext() {
 *     Swift.print(arrIterator.next())
 * }
 * // Output: 1, 2, 3, 4, 5
 * - Fixme: ⚠️️ Make the `ReverseArrayIterator` class to iterate over the array in reverse order
 */
open class ArrayIterator<T> {
   /**
    * The index of the current element in the collection
    */
   public var index: Int = 0
   /**
    * The collection to iterate over
    */
   public var collection: [T]
   /**
    * Initializes a new instance of the `ArrayIterator` class with the specified array
    * - Parameter array: The array to iterate over
    */
   public init(array: [T]) {
      self.collection = array
   }
   /**
    * Returns a Boolean value indicating whether there are more elements to iterate over
    * - Returns: `true` if there are more elements to iterate over; otherwise, `false`
    */
   public func hasNext() -> Bool {
      index < collection.count
   }
   /**
    * Returns current item
    */
   public func next() -> T {
      let retVal = collection[index] // cur item
      index += 1
      return retVal
   }
   /**
    * Resets the iterator to the beginning of the collection
    */
   public func reset() {
      index = 0
   }
}
/**
 * Extends the `ArrayIterator` class to conform to the `Iteratable` protocol
 */
extension ArrayIterator: Iteratable {}

// let arrIterator = ArrayIterator(array:[1,2,3,4,5])
//        while arrIterator.hasNext() {
//            Swift.print(arrIterator.next())
//        }
