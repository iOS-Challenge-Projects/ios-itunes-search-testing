//
//  iTunes_SearchTests.swift
//  iTunes SearchTests
//
//  Created by FGT MAC on 4/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import iTunes_Search

class SearchResultControllerTests: XCTestCase {
    
    func testFormSomeResults() {
        
        let controller = SearchResultController()
        
        //1.Create expectation
        let expectation = self.expectation(description: "Wait for expectations")
        
        controller.performSearch(for: "GarageBand", resultType: .software) {
            //Artificial failure for testing purposes
            //XCTFail()
            
             //3.Let the expectation know that it was fulfill
            expectation.fulfill()
        }
        
         //2.Timer for expectation to complete
        //if the fulfill() is not call within the timeout it will fail test
        wait(for: [expectation], timeout: 5)
    }
    

    func testSpeedOfTypicalRequest2() {
        
        measureMetrics([.wallClockTime], automaticallyStartMeasuring: false) {
            let controller = SearchResultController()
            
            //1.Create expectation
            let expectation = self.expectation(description: "Wait for expectations")
            
            //Start measuring
            self.startMeasuring()
            
            controller.performSearch(for: "GarageBand", resultType: .software) {
                //Artificial failure for testing purposes
                //XCTFail()
                //stop measuring
                self.stopMeasuring()
                //3.Let the expectation know that it was fulfill
                expectation.fulfill()
            }
            
            //2.Timer for expectation to complete
            //if the fulfill() is not call within the timeout it will fail test
            wait(for: [expectation], timeout: 2)
            
        }
    }
    

}
