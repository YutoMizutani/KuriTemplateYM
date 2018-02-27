//
//  HogeHogesaaUseCase.swift
//  Kuri
//
//  Created by ym on 2018/2/27.
//  Copyright © 2018 ym. All rights reserved.
//

import Foundation

protocol HogeHogesaaUseCase {
    func fetch(_ closure: (HogeHogesaaModel) -> Void) throws
}


struct HogeHogesaaUseCaseImpl {
    typealias repositoryType = HogeHogesaaRepository
    typealias translatorType = HogeHogesaaTranslator

    private let repository: repositoryType
    private let translator: translatorType

    init(
        repository: repositoryType,
        translator: translatorType
        ) {
        self.repository = repository
        self.translator = translator
    }
}

extension HogeHogesaaUseCaseImpl: HogeHogesaaUseCase {
    func fetch(_ closure: (HogeHogesaaModel) -> Void) throws  {
        try repository.fetch {
           closure(
              translator.translate(from: $0)
           )
        }
    }
}
