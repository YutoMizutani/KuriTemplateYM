//
//  HogeHogesaaBuilder.swift
//  Kuri
//
//  Created by ym on 2018/2/27.
//  Copyright © 2018 ym. All rights reserved.
//

import UIKit

struct HogeHogesaaBuilder {
    func build() -> UIViewController {
        let viewController = HogeHogesaaViewController()
        viewController.inject(
            presenter: HogeHogesaaPresenterImpl(
                viewInput: viewController,
                wireframe: HogeHogesaaWireframeImpl(
                    viewController: viewController
                ),
                useCase: HogeHogesaaUseCaseImpl(
                    repository: HogeHogesaaRepositoryImpl (
                        dataStore: HogeHogesaaDataStoreImpl()
                    ),
                    translator: HogeHogesaaTranslatorImpl()
                )
            )
        )
        return viewController
    }
    func buildWithNavigationController(title: String) -> UINavigationController {
        let viewController = self.build()
        viewController.navigationItem.title = title
        let navigationController = UINavigationController.init(rootViewController: viewController)
        return navigationController
    }
}
