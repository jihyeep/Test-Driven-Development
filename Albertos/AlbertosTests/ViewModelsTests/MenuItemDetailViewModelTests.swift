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
    
    func testWhenItemIsNotInOrderButtonSaysAdd() {
        // Arrange
        let item: MenuItem = .fixture()
        let orderController = OrderController()
        let viewModel = MenuItemDetail.ViewModel(item: item,
                                                 orderController: orderController)
        
        // Act
        let text = viewModel.addOrRemoveFromOrderButtonText
        
        // Assert
        XCTAssertEqual(text, "Add to order")
    }
    
    func testWhenItemIsInOrderButtonActionRemovesIt() {
        // Arrange
        let item: MenuItem = .fixture()
        let orderController = OrderController()
        let viewModel = MenuItemDetail.ViewModel(item: item,
                                                 orderController: orderController)
        orderController.addToOrder(item: item)
        
        // Act
        /// Order에 item을 삭제함
        viewModel.addOrRemoveFromOrder()
        
        XCTAssertFalse(orderController.order.items.contains { $0 == item })
    }
    
    func testWhenItemIsNotInOrderButtonActionAddsIt() {
        // Arrange
        let item: MenuItem = .fixture()
        let orderController = OrderController()
        let viewModel = MenuItemDetail.ViewModel(item: item,
                                                 orderController: orderController)
        // Act
        /// Order에 item을 추가함
        viewModel.addOrRemoveFromOrder()
        
        XCTAssertTrue(orderController.order.items.contains { $0 == item })
    }
    
}
