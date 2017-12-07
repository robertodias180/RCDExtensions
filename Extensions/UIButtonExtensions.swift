//
//  UIButtonExtensions.swift
//

import UIKit

// MARK: - Methods
public extension UIButton {

    /// RCDExtensions: Push ViewController And Remove from stack with completion handler.
    ///
    /// - Parameters:
    ///   - viewController: viewController to push.
    ///   - completion: optional completion handler (default is nil).
    
    
    
    /// RCDExtensions: Fits text inside a UIButton
    ///
    /// - Parameter numberOfLines: number of lines in the button
    public func fitText(numberOfLines: Int = 1) {
        titleLabel?.numberOfLines = numberOfLines
        titleLabel?.adjustsFontSizeToFitWidth = true
        titleLabel?.lineBreakMode = .byClipping
    }
    
}
