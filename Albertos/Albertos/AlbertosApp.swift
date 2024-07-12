//
//  AlbertosApp.swift
//  Albertos
//
//  Created by 박지혜 on 7/10/24.
//

import SwiftUI

@main
struct AlbertosApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MenuList(viewModel: .init(menuFetching: MenuFetcher(networkFetching: URLSession.shared)))
            }
        }
    }
}
