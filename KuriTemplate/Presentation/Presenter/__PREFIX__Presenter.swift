//
//  __PREFIX__Presenter.swift
//  Kuri
//
//  Created by __USERNAME__ on __DATE__.
//  Copyright © __YEAR__ __USERNAME__. All rights reserved.
//

import Foundation

protocol __PREFIX__Presenter: class {

}


class __PREFIX__PresenterImpl {
    typealias viewInputType = __PREFIX__ViewInput
    typealias wireframeType = __PREFIX__Wireframe
    typealias useCaseType = __PREFIX__UseCase

    private weak var viewInput: viewInputType?
    private let wireframe: __PREFIX__Wireframe
    private let useCase: __PREFIX__UseCase

    init(
        viewInput: viewInputType,
        wireframe: wireframeType,
        useCase: useCaseType
        ) {
        self.viewInput = viewInput
        self.useCase = useCase
        self.wireframe = wireframe
    }
}

extension __PREFIX__PresenterImpl: __PREFIX__Presenter {
}
