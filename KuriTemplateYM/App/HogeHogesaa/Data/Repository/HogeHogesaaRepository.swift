//
//  HogeHogesaaRepository.swift
//  Kuri
//
//  Created by ym on 2018/2/27.
//  Copyright © 2018 ym. All rights reserved.
//

import Foundation

protocol HogeHogesaaRepository {
    func fetch(_ closure: (HogeHogesaaEntity) -> Void) throws
}


struct HogeHogesaaRepositoryImpl {
    typealias dataStoreType = HogeHogesaaDataStore

    private let dataStore: dataStoreType

    init(
        dataStore: dataStoreType
        ) {
        self.dataStore = dataStore
    }
}

extension HogeHogesaaRepositoryImpl: HogeHogesaaRepository {
    func fetch(_ closure: (HogeHogesaaEntity) -> Void) throws  {
        return try dataStore.fetch(closure)
    }
}
