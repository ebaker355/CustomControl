//
//  RoundButton.swift
//
//  Copyright © 2017 Samples. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
open class RoundButton: UIView {

    @IBInspectable open var color: UIColor = .blue

    open override class var requiresConstraintBasedLayout: Bool {
        get {
            return true
        }
    }

    open override func draw(_ rect: CGRect) {
        let size = min(rect.size.width, rect.size.height)
        let frame = CGRect(origin: rect.origin, size: CGSize(width: size, height: size))

        let path = UIBezierPath(ovalIn: frame)
        self.color.setFill()
        path.fill()
    }
}
