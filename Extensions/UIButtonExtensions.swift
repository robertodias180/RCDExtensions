//
//  UIButtonExtensions.swift
//

import UIKit

// MARK: - Methods
public extension UIButton {
    
    /// RCDExtensions: Fits text inside a UIButton
    ///
    /// - Parameter numberOfLines: number of lines in the button (default: 1)
    public func fitText(numberOfLines: Int = 1) {
        titleLabel?.numberOfLines = numberOfLines
        titleLabel?.adjustsFontSizeToFitWidth = true
        titleLabel?.lineBreakMode = .byClipping
    }
    
}
