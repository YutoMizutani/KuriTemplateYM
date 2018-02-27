//
//  HogeHogesaaPresenter.swift
//  Kuri
//
//  Created by ym on 2018/2/27.
//  Copyright © 2018 ym. All rights reserved.
//

import Foundation

protocol HogeHogesaaPresenter: class {

}


class HogeHogesaaPresenterImpl {
    typealias viewInputType = HogeHogesaaViewInput
    typealias wireframeType = HogeHogesaaWireframe
    typealias useCaseType = HogeHogesaaUseCase

    private weak var viewInput: viewInputType?
    private let wireframe: HogeHogesaaWireframe
    private let useCase: HogeHogesaaUseCase

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

extension HogeHogesaaPresenterImpl: HogeHogesaaPresenter {
}
