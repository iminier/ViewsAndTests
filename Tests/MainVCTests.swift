
import XCTest
@testable import ViewsAndTests

class MainVCTests: XCTestCase {
    
    var viewController: MainVC!
    
    override func setUp() {
        
        super.setUp()
        viewController = MainVC()
        let _ = viewController.view
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // User opens application and MainView should be loaded by the VC
    
    func testCorrectViewLoads() {
        
        let result = viewController.mainView.tag
        XCTAssertEqual(result, 1)
        
    }
    
}
