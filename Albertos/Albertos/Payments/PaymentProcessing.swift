//
//  PaymentProcessing.swift
//  Albertos
//
//  Created by 박지혜 on 7/12/24.
//

import Combine

protocol PaymentProcessing {

    func process(order: Order) -> AnyPublisher<Void, Error>
}
