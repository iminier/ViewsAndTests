
import XCTest
@testable import ViewsAndTests
    
class MainViewTests: XCTestCase {

    var viewController: MainVC!
    
    override func setUp() {
        super.setUp()
    
        viewController = MainVC()
        let _ = viewController.view
            
    }

    // User should see the grid
    
    func testTopRowLoadsWithoutImage() {
        
        let image = viewController.mainView.rowTop.image
        
        XCTAssertNil(image)
        
    }
    
    func testBackgroundColorLoadsClear() {
        
        let backgroundColor = viewController.mainView.rowTop.backgroundColor
        
        XCTAssertEqual(backgroundColor, UIColor.clear)
        
    }
    
    func testTopRowBorderLoadsCorrectly() {
        
        let border = viewController.mainView.rowTop.layer.borderColor
        
        XCTAssertEqual(border, UIColor.white.cgColor)
    }
    
    // User should see Test button
    
    func testTestButtonLoads() {
        
        let button = viewController.mainView.testButton
        let buttonName = button?.titleLabel?.text
        
        XCTAssertEqual(buttonName, "TEST")
    }
    
    func testTestButtonSize() {
        let buttonSize = viewController.mainView.testButton.frame.size
        XCTAssertEqual(buttonSize, CGSize(width: 175.0, height: 40.0))
        
    }
    
    func testTestButton() {
        let result = viewController.mainView.testButAction(sender: viewController.mainView.testButton)
        XCTAssertEqual(result, "Test button was pressed")
    }
    
    // User should see More button
    
    func testMoreButtonLoads() {
        let button = viewController.mainView.moreButton
        let buttonName = button?.titleLabel?.text
        XCTAssertEqual(buttonName, "MORE")
    }

    func testMoreButtonSize() {
        let buttonSize = viewController.mainView.moreButton.frame.size
        XCTAssertEqual(buttonSize, CGSize(width: 175.0, height: 40.0))
        
    }
    
    func testMoreButton() {
        let result = viewController.mainView.moreButAction(sender: viewController.mainView.moreButton)
        XCTAssertEqual(result, "Test button was pressed")
    }
    
}
