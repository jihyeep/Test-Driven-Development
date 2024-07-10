//
//  HelloWorldTests.swift
//  HelloWorldTests
//
//  Created by 박지혜 on 7/10/24.
//

import XCTest

func isLeap(_ year: Int) -> Bool {
    return false
}

final class LeapYearTests: XCTestCase {
    func testEvenlyDivisibleBy4IsLeap() {
        XCTAssertTrue(isLeap(2020))
    }
    func testEvenlyDivisibleBy100IsNotLeap() {}
    func testEvenlyDivisibleBy400isLeap() {}
    func testNotEvenlyDivisibleBy4Or400IsNotLeap() {}
}
