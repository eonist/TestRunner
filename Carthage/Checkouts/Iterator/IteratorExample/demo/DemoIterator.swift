import Foundation
import Iterator_IOS
/**
 * Demonstrates async iterator
 */
class DemoIterator: ArrayIterator<DemoItem> {
    var complete: Completed
    init(array: Array<DemoItem>, onComplete:@escaping Completed) {
        self.complete = onComplete
        super.init(array: array)
    }
}
