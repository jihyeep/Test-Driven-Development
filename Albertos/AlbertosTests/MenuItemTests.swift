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
        let json = """
                    {
                        "name": "a name",
                        "category": {
                            "name": "a category",
                            "id": 123
                        },
                        "spicy": false
                    }
                    """
        let jsonData = try XCTUnwrap(json.data(using: .utf8))
        
        // Act
        let item = try JSONDecoder().decode(MenuItem.self, from: jsonData)
        
        // Assert
        XCTAssertEqual(item.name, "a name")
        XCTAssertEqual(item.category, "a category")
        XCTAssertEqual(item.spicy, false)
    }
    
    func testDecodesFromJSONData() throws {
        // Arrange
        // 강제 언래핑 대신 XCTUnwrap 테스트를 통해 확인
        let data = try dataFromJSONFileNamed("menu_item")
        
        // Act
        let item = try JSONDecoder().decode(MenuItem.self, from: data)
        
        // Assert
        XCTAssertEqual(item.name, "a name")
        XCTAssertEqual(item.category, "a category")
        XCTAssertEqual(item.spicy, true)
    }
}
