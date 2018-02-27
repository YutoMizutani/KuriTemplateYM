//
//  HogeHogesaaView.swift
//  Kuri
//
//  Created by ym on 2018/2/27.
//  Copyright © 2018 ym. All rights reserved.
//

import UIKit

class HogeHogesaaView: UIView {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        configureView()
        layoutView()
    }
    override func layoutSubviews() {
        super.layoutSubviews()

        layoutView()
        
        self.layoutIfNeeded()
    }
}

extension HogeHogesaaView {
    private func configureView() {

    }
    private func layoutView() {

    }
}
