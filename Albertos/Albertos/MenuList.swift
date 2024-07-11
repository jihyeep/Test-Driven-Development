//
//  ContentView.swift
//  Albertos
//
//  Created by 박지혜 on 7/10/24.
//

import SwiftUI

struct MenuList: View {
    let viewModel: ViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.sections) { section in
                Section(header: Text(section.category)) {
                    ForEach(section.items) { item in
                        MenuRow(viewModel: .init(item: item))
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        MenuList(viewModel: .init())
    }
}
