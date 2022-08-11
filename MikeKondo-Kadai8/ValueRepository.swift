//
//  ValueRepository.swift
//  MikeKondo-Kadai8
//
//  Created by akio0911 on 2022/08/11.
//

import Foundation

class ModelLocator {
    static let valueRepository = ValueRepository()
}

class ValueRepository {
    private var value: Float = 0

    func save(value: Float) {
        self.value = value
    }

    func load() -> Float {
        value
    }
}
