//
//  DimmingPrestentationController.swift
//  StoreSearch
//
//  Created by SrearAlex on 2017/3/29.
//  Copyright © 2017年 SrearAlex. All rights reserved.
//

import UIKit

class DimmingPrestentationController: UIPresentationController {
    lazy var dimmingView = GradientView(frame: CGRect.zero)
    override var shouldRemovePresentersView: Bool {
        return false
    }
    override func presentationTransitionWillBegin() {
        dimmingView.frame = containerView!.bounds
        containerView?.insertSubview(dimmingView, at: 0)
        dimmingView.alpha = 0
        if let coordinator = presentedViewController.transitionCoordinator {
            coordinator.animate(alongsideTransition: {
                _ in
                self.dimmingView.alpha = 1
            }, completion: nil)
        }
    }
    
    override func dismissalTransitionWillBegin() {
        dimmingView.alpha = 1
        if let coordinator = presentedViewController.transitionCoordinator {
            coordinator.animate(alongsideTransition: {
                _ in
                self.dimmingView.alpha = 0
            }, completion: nil)
        }
    }
}
