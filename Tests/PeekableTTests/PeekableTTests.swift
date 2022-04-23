import XCTest
@testable import PeekableT

final class PeekableTTests: XCTestCase {
  
  // yeah, yeah, tell it to your manager.
  
  func test() {
    
    let elements = [1,2,3]
    let input    = Peekable ( elements: elements )
    
    for i in 0...1 {
      if let nxt = input.next() { XCTAssert( nxt == elements[i]  ) }
      else                      { XCTFail  ("i == \(i), nxt == nil") }
    }
    
    if let peek = input.peek() { XCTAssert( peek == 3)   }
    else                       { XCTFail  ("peek == nil")}
    
    if let _ = input.next(), let _ = input.peek() { XCTFail("peek != nil")  }
    
    if let _ = input.next() { XCTFail("next != nil") }
  }
}
