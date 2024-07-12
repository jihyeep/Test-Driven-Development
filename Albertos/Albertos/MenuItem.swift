//
//  MenuItem.swift
//  Albertos
//
//  Created by 박지혜 on 7/10/24.
//

import Foundation

struct MenuItem: Identifiable, Equatable, Codable {
    var id: String { name }
    
    let category: String
    let name: String
    let spicy: Bool
    let price: Double
}

func groupMenuByCategory(_ menu: [MenuItem]) -> [MenuSection] {
    if menu.isEmpty { return [] }
    return Dictionary(grouping: menu, by: { $0.category })
        .map { key, value in
            MenuSection(category: key, items: value)
        }
        .sorted {
            $0.category > $1.category
        } // 내림차순 정렬
}
