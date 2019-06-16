import Foundation
/**
 * Supports fractional time
 */
func sleep(sec: Double){
    usleep(useconds_t(sec * 1000000)) // wait for n secs
}
