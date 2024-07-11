//
//  MenuListViewModelTests.swift
//  AlbertosTests
//
//  Created by 박지혜 on 7/11/24.
//

import XCTest
@testable import Albertos

final class MenuListViewModelTests: XCTestCase {
    func testCallsGivenGroupingFunction() {
        // 호출되었는지 확인
        var called = false
        // 임시 데이터를 집어넣고 코드가 잘 구동되는지 확인
        let inputSections = [MenuSection.fixture()]
        let probeClosure: ([MenuItem]) -> [MenuSection] = { _ in
            called = true
            return inputSections
        }
        
        let viewModel = MenuList.ViewModel(menu: [.fixture()], menuGrouping: probeClosure)
        let sections = viewModel.sections
        
        // Check that the given closure was called
        XCTAssertTrue(called)
        // Check that the returned value was build with the closure
        XCTAssertEqual(sections, inputSections)
    }
}
