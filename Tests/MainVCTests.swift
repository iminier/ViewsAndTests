
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
    
    // User should see the grid

    func testGridLoads() {
        //let topRow = viewController.mainView.rowTop.is
    }
    
    // User should see Test button
    
    func testTestButtonLoads() {
        let button = viewController.mainView.testButton
        let buttonName = button?.titleLabel?.text
        XCTAssertEqual(buttonName, "TEST")
    }
    
    // User should see More button
    
    func testMoreButtonLoads() {
        let button = viewController.mainView.moreButton
        let buttonName = button?.titleLabel?.text
        XCTAssertEqual(buttonName, "MORE")
    }
    
}