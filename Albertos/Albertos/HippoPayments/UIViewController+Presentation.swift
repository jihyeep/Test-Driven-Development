//
//  UIViewController+Presentation.swift
//  Albertos
//
//  Created by 박지혜 on 7/12/24.
//

import UIKit

extension UIViewController {

    /// Travels the `presentedViewController` hierarchy backwards till it finds the topmost one.
    var viewControllerPresentationSource: UIViewController {
        guard let presentedViewController = self.presentedViewController else { return self }

        return presentedViewController.viewControllerPresentationSource
    }
}

