//
//  HogeHogesaaTranslator.swift
//  Kuri
//
//  Created by ym on 2018/2/27.
//  Copyright © 2018 ym. All rights reserved.
//

import Foundation

protocol HogeHogesaaTranslator {
    func translate(from model: HogeHogesaaModel) -> HogeHogesaaEntity
    func translate(from entity: HogeHogesaaEntity) -> HogeHogesaaModel
}

struct HogeHogesaaTranslatorImpl: HogeHogesaaTranslator {
    func translate(from model: HogeHogesaaModel) -> HogeHogesaaEntity {
        return HogeHogesaaEntityImpl(id: model.id)
    }
    func translate(from entity: HogeHogesaaEntity) -> HogeHogesaaModel {
        return HogeHogesaaModelImpl(id: entity.id)
    }
}
