//
//  rickMortyUITests.swift
//  rickMortyUITests
//
//  Created by Georgi Malkhasyan on 9/9/20.
//  Copyright © 2020 Malkhasyan. All rights reserved.
//

import XCTest
@testable import rickMorty
class rickMortyUITests: XCTestCase {
    
    
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        app = XCUIApplication()
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDownWithError() throws {
        app = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func testCharacterViewController_Items() {
        app.launch()
        app.tabBars.buttons.element(boundBy: 0).tap()
        XCTAssertTrue(app.isCharacterViewControllers, "MyLibraryView is not available when tabbar clicked")
        app.tabBars.buttons.element(boundBy: 1).tap()
        app.tabBars.buttons.element(boundBy: 2).tap()
    }
    
}


extension XCUIApplication {
    
    var isCharacterViewControllers: Bool {
        return otherElements["Character"].exists
    }
    
    
    var isLocationDisplay: Bool  {
        return otherElements["GenreList"].exists
    }
    
    
    var isDisplayEpisode: Bool  {
           return otherElements["Episode"].exists
       }
}
