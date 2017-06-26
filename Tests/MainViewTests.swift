
import XCTest
@testable import ViewsAndTests
    
class MainViewTests: XCTestCase {

    var viewUnderTest: MainVC!
    
    override func setUp() {
        super.setUp()
    
        viewUnderTest = MainVC()
        let _ = viewUnderTest.view
            
    }

    // User should see the grid
    
    func testTopRowLoadsWithoutImage() {
        
        let image = viewUnderTest.mainView.rowTop.image
        
        XCTAssertNil(image)
        
    }
    
    func testBackgroundColorLoadsClear() {
        
        let backgroundColor = viewUnderTest.mainView.rowTop.backgroundColor
        
        XCTAssertEqual(backgroundColor, UIColor.clear)
        
    }
    
    func testTopRowBorderLoadsCorrectly() {
        
        let border = viewUnderTest.mainView.rowTop.layer.borderColor
        
        XCTAssertEqual(border, UIColor.white.cgColor)
    }
    
    // User should see Test button
    
    func testTestButtonLoads() {
        
        let button = viewUnderTest.mainView.testButton
        let buttonName = button?.titleLabel?.text
        
        XCTAssertEqual(buttonName, "TEST")
    }
    
    func testTestButtonSize() {
        let buttonSize = viewUnderTest.mainView.testButton.frame.size
        XCTAssertEqual(buttonSize, CGSize(width: 175.0, height: 40.0))
        
    }
    
    func testTestButton() {
        let result = viewUnderTest.mainView.testButAction(sender: viewUnderTest.mainView.testButton)
        XCTAssertEqual(result, "Test button was pressed")
    }
    
    // User should see More button
    
    func testMoreButtonLoads() {
        let button = viewUnderTest.mainView.moreButton
        let buttonName = button?.titleLabel?.text
        XCTAssertEqual(buttonName, "MORE")
    }

    func testMoreButtonSize() {
        let buttonSize = viewUnderTest.mainView.moreButton.frame.size
        XCTAssertEqual(buttonSize, CGSize(width: 175.0, height: 40.0))
        
    }
    
    func testMoreButton() {
        let result = viewUnderTest.mainView.moreButAction(sender: viewUnderTest.mainView.moreButton)
        XCTAssertEqual(result, "Test button was pressed")
    }
    
}
