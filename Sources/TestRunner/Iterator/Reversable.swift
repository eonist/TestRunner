import Foundation
/**
 * A protocol that extends the `Iteratable` protocol to provide the ability to iterate over a collection of elements of type `T` in reverse order
 * - Fixme: ⚠️️ Consider renaming this protocol to `ReverseIteratable`
 */
protocol Reversable: Iteratable {
    /**
     * Returns a Boolean value indicating whether there is a previous element to iterate over
     * - Returns: `true` if there is a previous element to iterate over; otherwise, `false`
     */
    func hasPrev() -> Bool
    /**
     * Returns the previous element in the collection
     * - Returns: The previous element in the collection
     */
    func prev() -> T
}
