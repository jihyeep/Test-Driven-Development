//
//  PaymentProcessingStub.swift
//  AlbertosTests
//
//  Created by 박지혜 on 7/12/24.
//

import Foundation
import Combine
@testable import Albertos

class PaymentProcessingStub: PaymentProcessing {

    let result: Result<Void, Error>

    init(returning result: Result<Void, Error>) {
        self.result = result
    }

    func process(order: Order) -> AnyPublisher<Void, Error> {
        return result.publisher
            // Use a delay to simulate the real world async behavior
            .delay(for: 0.01, scheduler: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
