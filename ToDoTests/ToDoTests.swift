//
//  ToDoTests.swift
//  ToDoTests
//
//  Created by Andrew Ananda on 07/05/2021.
//

import XCTest
import CoreLocation

@testable import ToDo

class ToDoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func test_Init_WhenGivenLocation_SetLocation() {
        let coordinate = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        let location = Location(name: "Nairobi", coordinate: coordinate)
        let item = TodoItem(title: "Test", description: "Finish up all the tests", timestamp: 0.0, location: location)
        
        XCTAssertEqual(item.location?.name, location.name, "Should display location name")
        
    }

//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
    

}
