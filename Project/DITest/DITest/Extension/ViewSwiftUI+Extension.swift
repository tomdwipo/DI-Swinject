//
//  View+Extension.swift
//  DITest
//
//  Created by Tommy on 21/01/22.
//

import Foundation
import SwiftUI

extension View {
    func presentTo<T: UIViewController>(page: T) {
        presentViewController()?.present(page, animated: true)
    }
    
    func dismiss() {
        presentViewController()?.dismiss(animated: true)
    }
    
    func pushViewTo<T: UIViewController>(page: T) {
        presentViewController()?.navigationController?.pushViewController(page, animated: true)
    }
    
    func popView() {
        presentViewController()?.navigationController?.popViewController(animated: true)
    }
    
    private func presentViewController() -> UIViewController? {
        let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        guard var topController = keyWindow?.rootViewController else { return nil }
        while let presentedViewController = topController.presentedViewController {
            topController = presentedViewController
        }
        return topController
    }
}
