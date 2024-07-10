//
//  MenuSection.swift
//  Albertos
//
//  Created by 박지혜 on 7/10/24.
//

import Foundation

struct MenuSection: Identifiable {
    var id: String { category }
    
    let category: String
    let items: [MenuItem]
}
