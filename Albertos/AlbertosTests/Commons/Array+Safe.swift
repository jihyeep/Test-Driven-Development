//
//  Array+Safe.swift
//  AlbertosTests
//
//  Created by 박지혜 on 7/11/24.
//

// Index out of range error일 때 nil을 반환
extension Array {
  subscript(safe index: Index) -> Element? {
    0 <= index && index < count ? self[index] : nil
  }
}
