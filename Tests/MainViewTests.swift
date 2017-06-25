
import XCTest
@testable import ViewsAndTests
    
class MainViewTests: XCTestCase {
        
        var mainView: MainView!
        
        override func setUp() {
            super.setUp()
            
            mainView = MainView()
            
        }
        
        func testTestButton() {
            let result = mainView.testButAction(sender: mainView.testButton)
            XCTAssertEqual(result, "Test button was pressed")
        }
        
}
