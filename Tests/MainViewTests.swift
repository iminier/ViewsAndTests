//
//  MainViewTests.swift
//  ViewsAndTests
//
//  Created by Ivan Minier on 6/24/17.
//  Copyright © 2017 Ivan Minier. All rights reserved.
//

import XCTest
@testable import ViewsAndTests
    
class MainViewTests: XCTestCase {
        
        var mainView: MainView!
        
        override func setUp() {
            super.setUp()
            // Put setup code here. This method is called before the invocation of each test method in the class.
            
            mainView = MainView()
            
        }
        
        func testTestButton() {
            let result = mainView.testButAction(sender: mainView.testButton)
            XCTAssertEqual(result, "Test button was pressed")
        }
        
}
