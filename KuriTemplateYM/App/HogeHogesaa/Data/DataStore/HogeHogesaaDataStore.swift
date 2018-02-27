//
//  HogeHogesaaDataStore.swift
//  Kuri
//
//  Created by ym on 2018/2/27.
//  Copyright © 2018 ym. All rights reserved.
//

import Foundation

protocol HogeHogesaaDataStore {
    func fetch(_ closure: (HogeHogesaaEntity) -> Void) throws 
}

struct HogeHogesaaDataStoreImpl: HogeHogesaaDataStore {
    func fetch(_ closure: (HogeHogesaaEntity) -> Void) throws  {
        // you can write get entity method
    }
}
