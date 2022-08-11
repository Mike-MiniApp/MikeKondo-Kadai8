//
//  ValueRepository.swift
//  MikeKondo-Kadai8
//
//  Created by 近藤米功 on 2022/08/12.
//

import Foundation
// ValueRepository自体はシングルトンにせず、置き場となるModelLocatorをシングルトンにしました
class ModelLocator {
    static let valueRepository = ValueRepository()
}

class ValueRepository {
    private var value: Float = 0

    func save(value: Float) {
        self.value = value
    }

    func load() -> Float {
        return value
    }
}
