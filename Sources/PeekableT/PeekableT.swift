import Foundation

// I swear I've written this like dozens of times,
// so I'm throwing it into a package
// it's really nothing fancy

public class Peekable<T> {

  var elements : [T] = []
  var index = 0
  
  public init(elements: [T]) {
    self.elements = elements
  }
  
  public func next() -> T? {
    defer { index += 1 }
    return index < elements.count ? elements[index] : nil
  }
  
  public func peek() -> T? {
    return index < elements.count ? elements[index] : nil
  }
  
}
