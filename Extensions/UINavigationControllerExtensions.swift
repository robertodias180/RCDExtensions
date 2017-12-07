//
//  UINavigationControllerExtensions.swift
//

import UIKit

// MARK: - Methods
public extension UINavigationController {
    
    /// RCDExtensions: Push ViewController And Remove from stack with completion handler.
    ///
    /// - Parameters:
    ///   - viewController: viewController to push.
    ///   - completion: optional completion handler (default is nil).
    public func pushViewControllerAndFinish(_ viewController: UIViewController, completion: (() -> Void)? = nil) {
        let currentVc = self.viewControllers.last
        weak var weakSelf = self
        CATransaction.begin()
        CATransaction.setCompletionBlock { 
            if let completion = completion {
                completion()
            }
            if let vc = currentVc, let index = weakSelf?.viewControllers.index(of: vc) {
                weakSelf?.viewControllers.remove(at: index)
            }
        }
        pushViewController(viewController, animated: true)
        CATransaction.commit()
    }
    
}
