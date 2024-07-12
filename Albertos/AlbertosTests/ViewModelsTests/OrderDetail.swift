//
//  OrderDetail.swift
//  AlbertosTests
//
//  Created by 박지혜 on 7/12/24.
//

import XCTest

@testable import Albertos

final class OrderDetailViewModelTests: XCTestCase {

    func testCheckoutButtonTappedStartsPaymentProcessingFlow() {
        // Arrange
        let orderController = OrderController()
        orderController.addToOrder(item: .fixture(name: "name", price: 1.0))
        orderController.addToOrder(item: .fixture(name: "other name", price: 2.0))

        let paymentProcessingSpy = PaymentProcessingSpy()
        let viewModel = OrderDetail.ViewModel(
            orderController: orderController,
            paymentProcessor: paymentProcessingSpy)
        viewModel.checkout()
        XCTAssertEqual(paymentProcessingSpy.receivedOrder, orderController.order)
    }
}
