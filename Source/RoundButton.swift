//
//  RoundButton.swift
//
//  Copyright © 2017 Samples. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
open class RoundButton: UIView {

    @IBInspectable public var color: UIColor

    public override init(frame: CGRect) {
        color = .blue
        super.init(frame: frame)
    }

    public required init?(coder aDecoder: NSCoder) {
        color = .blue
        super.init(coder: aDecoder)
    }

    open override class var requiresConstraintBasedLayout: Bool {
        get {
            return true
        }
    }

    open override func draw(_ rect: CGRect) {
        let size = min(rect.size.width, rect.size.height)
        let center = CGPoint(x: rect.size.width / 2.0, y: rect.size.height / 2.0)
        let frame = CGRect(origin: center, size: CGSize(width: size, height: size))

        let path = UIBezierPath(ovalIn: frame)
        self.color.setFill()
        path.fill()
    }
}
