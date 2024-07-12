//
//  MenuItemDetailViewModelTests.swift
//  AlbertosTests
//
//  Created by 박지혜 on 7/12/24.
//

import XCTest

@testable import Albertos

final class MenuItemDetailViewModelTests: XCTestCase {

    func testWhenItemIsInOrderButtonSaysRemove() {
        // Arrange
        let item: MenuItem = .fixture()
        let orderController = OrderController()
        orderController.addToOrder(item: item)

        // Act
        let viewModel = MenuItemDetail.ViewModel(item: item, orderController: orderController)

        // Assert
        let text = viewModel.addOrRemoveFromOrderButtonText
        XCTAssertEqual(text, "Remove from order")
    }

    func testWhenItemIsNotInOrderButtonSaysAdd() {}
    func testWhenItemIsInOrderButtonActionRemovesIt() {}
    func testWhenItemIsNotInOrderButtonActionAddsIt() {}

}
