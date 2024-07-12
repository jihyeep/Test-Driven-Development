//
//  MenuFetching.swift
//  Albertos
//
//  Created by 박지혜 on 7/11/24.
//

import Combine

protocol MenuFetching {
    func fetchMenu() -> AnyPublisher<[MenuItem], Error>
}
