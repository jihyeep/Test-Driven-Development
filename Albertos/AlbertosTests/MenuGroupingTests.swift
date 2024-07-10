//
//  AlbertosTests.swift
//  AlbertosTests
//
//  Created by 박지혜 on 7/10/24.
//

import XCTest
@testable import Albertos


final class MenuGroupingTests: XCTestCase {
    
    // 하나의 카테고리는 하나여야 함
    func testMenuWithManyCategoriesReturnsOneSectionPerCategory() {
        
    }
    
    // 메뉴 아이템이 동일한 카테고리를 갖는 경우, 하나의 섹션으로 구분
    func testMenuWithOneCategoryReturnOneSection() {
        let menu = [
            MenuItem(category: "pastas"),
            MenuItem(category: "pastas")
        ]
        let sections = groupMenuByCategory(menu)
        XCTAssertEqual(sections.count, 1) // Assert

    }
    
    // 비어 있는 섹션은 비어 있어야 함
    func testEmptyMenuReturnsEmptySections() {
        let menu = [MenuItem]() // Arrange
        let sections = groupMenuByCategory(menu) // Act
        XCTAssertTrue(sections.isEmpty) // Assert
    }
}
