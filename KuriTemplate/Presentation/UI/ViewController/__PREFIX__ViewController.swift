//
//  __PREFIX__ViewController.swift
//  Kuri
//
//  Created by __USERNAME__ on __DATE__.
//  Copyright © __YEAR__ __USERNAME__. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

protocol __PREFIX__ViewInput: class {

}


class __PREFIX__ViewController: UIViewController {
    typealias presenterType = __PREFIX__Presenter

    private var presenter: presenterType?
    private var subview: __PREFIX__View?

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

extension __PREFIX__ViewController {
    private func configureView() {
        selfview:do {
            self.view.backgroundColor = UIColor.white
        }
        subview:do {
            self.subview = __PREFIX__View(frame: self.view.bounds)
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

extension __PREFIX__ViewController {
    private func binding() {

    }
}

extension __PREFIX__ViewController: __PREFIX__ViewInput {

}
