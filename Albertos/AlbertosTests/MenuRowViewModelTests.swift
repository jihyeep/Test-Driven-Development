//
//  MenuRowViewModelTests.swift
//  AlbertosTests
//
//  Created by 박지혜 on 7/11/24.
//

import XCTest
@testable import Albertos

final class MenuRowViewModelTests: XCTestCase {
    func testWhenItemIsNotSpicyTextIsItemNameOnly() {
        let item = MenuItem.fixture(name: "name", spicy: false)
        let viewModel = MenuRow.ViewModel(item: item)
        // 컴파일러가 말합니다: Type 'MenuRow' has no member 'ViewModel'
        XCTAssertEqual(viewModel.text, "name")
    }
    func testWhenItemIsSpicyTextIsItemNameWithChiliEmoji() {
        let item = MenuItem.fixture(name: "name", spicy: true)
        let viewModel = MenuRow.ViewModel(item: item)
        XCTAssertEqual(viewModel.text, "name 🌶")
        // 이모지가 없어서 error
    }
}
