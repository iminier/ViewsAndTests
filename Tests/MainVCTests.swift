
import XCTest
@testable import ViewsAndTests

class MainVCTests: XCTestCase {
    
    var vcUnderTest: MainVC!
    
    override func setUp() {
        
        super.setUp()
        vcUnderTest = MainVC()
        let _ = vcUnderTest.view
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // User opens application and MainView should be loaded by the VC
    
    func testCorrectViewLoads() {
        
        let loadedView = vcUnderTest.mainView
        let loadedViewTag = loadedView?.tag
        XCTAssertEqual(loadedViewTag, 1)
        
    }
    
}
