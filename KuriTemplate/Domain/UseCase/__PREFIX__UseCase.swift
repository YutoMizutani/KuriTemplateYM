//
//  __PREFIX__UseCase.swift
//  Kuri
//
//  Created by __USERNAME__ on __DATE__.
//  Copyright © __YEAR__ __USERNAME__. All rights reserved.
//

import Foundation

protocol __PREFIX__UseCase {
    func fetch(_ closure: (__PREFIX__Model) -> Void) throws
}


struct __PREFIX__UseCaseImpl {
    typealias repositoryType = __PREFIX__Repository
    typealias translatorType = __PREFIX__Translator

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

extension __PREFIX__UseCaseImpl: __PREFIX__UseCase {
    func fetch(_ closure: (__PREFIX__Model) -> Void) throws  {
        try repository.fetch {
           closure(
              translator.translate(from: $0)
           )
        }
    }
}
