//
//  MenuItemTests.swift
//  AlbertosTests
//
//  Created by 박지혜 on 7/12/24.
//

import XCTest
@testable import Albertos

final class MenuItemTests: XCTestCase {
    
    // JSON 데이터가 모든 데이터를 가지고 있는지 확인
    func testWhenDecodedFromJSONDataHasAllTheInputProperties() throws {
        // Arrange
        /// json object 표준
        let json = #"{ "name": "a name", "category": "a category", "spicy": true }"#
        let jsonData = try XCTUnwrap(json.data(using: .utf8))
        
        // Act
        let item = try JSONDecoder().decode(MenuItem.self, from: jsonData)
        
        // Assert
        XCTAssertEqual(item.name, "a name")
        XCTAssertEqual(item.category, "a category")
        XCTAssertEqual(item.spicy, true)
    }
    
}
