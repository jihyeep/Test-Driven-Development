//
//  PaymentProcessingSpy.swift
//  AlbertosTests
//
//  Created by 박지혜 on 7/12/24.
//

import Foundation
import Combine

@testable import Albertos

class PaymentProcessingSpy: PaymentProcessing {
    private(set) var receivedOrder: Order?
    func process(order: Order) -> AnyPublisher<Void, any Error> {
        receivedOrder = order
        return Result<Void,Error>.success(())
            .publisher.eraseToAnyPublisher()
    }
}
