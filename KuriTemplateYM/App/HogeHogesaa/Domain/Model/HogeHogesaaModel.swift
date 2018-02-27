//
//  HogeHogesaaModel.swift
//  Kuri
//
//  Created by ym on 2018/2/27.
//  Copyright © 2018 ym. All rights reserved.
//

import Foundation

protocol HogeHogesaaModel {
   var id: Int { get }
}


struct HogeHogesaaModelImpl: HogeHogesaaModel {
    let id: Int
}