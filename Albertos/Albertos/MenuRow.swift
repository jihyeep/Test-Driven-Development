//
//  MenuRow.swift
//  Albertos
//
//  Created by 박지혜 on 7/11/24.
//

import SwiftUI

struct MenuRow: View {
    let viewModel: ViewModel

    var body: some View {
        Text(viewModel.text)
    }
}

#Preview {
    MenuRow(viewModel: .init(item: menu[0]))
}
