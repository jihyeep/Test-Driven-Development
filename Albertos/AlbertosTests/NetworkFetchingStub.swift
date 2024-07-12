//
//  NetworkFetchingStub.swift
//  AlbertosTests
//
//  Created by 박지혜 on 7/12/24.
//

import Foundation
import Combine

@testable import Albertos

class NetworkFetchingStub: NetworkFetching {
    // 미리 정해진 결과를 밀어넣음
    private let result: Result<Data, URLError>
    init(returning result: Result<Data, URLError>) {
        self.result = result
    }
    
    func load(_ request: URLRequest) -> AnyPublisher<Data, URLError> {
        return result.publisher
            .delay(for: 0.1, scheduler: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
