//
//  Order+HippoPayments.swift
//  Albertos
//
//  Created by 박지혜 on 7/12/24.
//

extension Order {
    var hippoPaymentsPayload: [String: Any] { ["items": items.map { $0.name }] }
}
