//
//  ContentView.swift
//  Albertos
//
//  Created by 박지혜 on 7/10/24.
//

import SwiftUI

struct MenuList: View {
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        switch viewModel.sections {
        case .success(let sections):
            List {
                ForEach(sections) { section in
                    Section(header: Text(section.category)) {
                        ForEach(section.items) { item in
                            MenuRow(viewModel: .init(item: item))
                        }
                    }
                }
            }
            .navigationTitle("Alberto's 🇮🇹")
        case .failure(let error):
            Text("An error occurred:")
            Text(error.localizedDescription).italic()
        }
    }
}

#Preview {
    NavigationStack {
        MenuList(viewModel: .init(menuFetching: MenuFetcher(networkFetching: URLSession.shared)))
    }
}
