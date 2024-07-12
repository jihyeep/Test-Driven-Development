//
//  MenuItem.swift
//  Albertos
//
//  Created by 박지혜 on 7/10/24.
//

import Foundation

struct Category: Equatable, Codable {
    let name: String
}

struct MenuItem: Identifiable, Equatable, Codable {
    var id: String { name }
    var category: String {
        categoryObject.name
    }
    let categoryObject: Category
    let name: String
    let spicy: Bool
    
    enum CodingKeys: String, CodingKey {
        case name, spicy
        case categoryObject = "category"
    }
}

extension MenuItem {
    init(category: String, name: String, spicy: Bool) {
        self.categoryObject = Category(name: category)
        self.name = name
        self.spicy = spicy
    }
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
