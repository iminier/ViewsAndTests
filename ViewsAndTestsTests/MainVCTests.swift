//
//  MainVCTests.swift
//  ViewsAndTests
//
//  Created by Ivan Minier on 6/24/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

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
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testViewControllerInitialization() {
        
        let result = viewController.mainView.tag
        
        XCTAssertEqual(result, 1)
        
    }
}
