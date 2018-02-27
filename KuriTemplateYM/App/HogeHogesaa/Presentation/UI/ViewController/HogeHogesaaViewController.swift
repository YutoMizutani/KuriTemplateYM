//
//  HogeHogesaaViewController.swift
//  Kuri
//
//  Created by ym on 2018/2/27.
//  Copyright © 2018 ym. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

protocol HogeHogesaaViewInput: class {

}


class HogeHogesaaViewController: UIViewController {
    typealias presenterType = HogeHogesaaPresenter

    private var presenter: presenterType?
    private var subview: HogeHogesaaView?

    private let disposeBag = DisposeBag()

    internal func inject(
        presenter: presenterType
        ) {
        self.presenter = presenter
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
        layoutView()
        binding()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        layoutView()

        self.view.layoutIfNeeded()
    }
}

extension HogeHogesaaViewController {
    private func configureView() {
        selfview:do {
            self.view.backgroundColor = UIColor.white
        }
        subview:do {
            self.subview = HogeHogesaaView(frame: self.view.bounds)
            if self.subview != nil {
                self.view.addSubview(self.subview!)
            }
        }
    }
    private func layoutView() {
        subview:do {
            self.subview?.frame = self.view.bounds
        }
    }
}

extension HogeHogesaaViewController {
    private func binding() {

    }
}

extension HogeHogesaaViewController: HogeHogesaaViewInput {

}
