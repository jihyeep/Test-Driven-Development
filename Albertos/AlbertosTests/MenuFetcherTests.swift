//
//  MenuFetcherTests.swift
//  AlbertosTests
//
//  Created by 박지혜 on 7/12/24.
//

import XCTest
@testable import Albertos
import Combine

final class MenuFetcherTests: XCTestCase {
    var cancellables = Set<AnyCancellable>()
    
    // 서버로부터 받아온 데이터가 잘 응답하는지 확인
    func testWhenRequestSuccedsPublishesDecodeMenuItems() {
        let menuFetcher = MenuFetcher()
        let expectation = XCTestExpectation(description: "Publishes decoded [MenuItem]")
        
        menuFetcher.fetchMenu()
            .sink(receiveCompletion: { _ in }, receiveValue: { items in
                // TODO: - ittems 값이 올바른지 테스트
                expectation.fulfill()
            })
            .store(in: &cancellables)
        wait(for: [expectation], timeout: 1)
    }
}
