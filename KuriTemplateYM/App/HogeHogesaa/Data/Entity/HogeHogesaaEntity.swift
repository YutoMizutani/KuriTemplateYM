//
//  HogeHogesaaEntity.swift
//  Kuri
//
//  Created by ym on 2018/2/27.
//  Copyright © 2018 ym. All rights reserved.
//

import Foundation

protocol HogeHogesaaEntity {
    var id: Int { get }
}


struct HogeHogesaaEntityImpl: HogeHogesaaEntity {
    let id: Int
}