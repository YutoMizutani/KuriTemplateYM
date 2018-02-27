//
//  HogeHogesaaWireframe.swift
//  Kuri
//
//  Created by ym on 2018/2/27.
//  Copyright © 2018 ym. All rights reserved.
//

import UIKit

protocol HogeHogesaaWireframe: class {

}


class HogeHogesaaWireframeImpl {
    private weak var viewController: UIViewController?

    init(
        viewController: UIViewController
        ) {
        self.viewController = viewController
    }
}

extension HogeHogesaaWireframeImpl: HogeHogesaaWireframe {
}
