//
//  FadeOutAnimationController.swift
//  StoreSearch
//
//  Created by SrearAlex on 2017/3/31.
//  Copyright © 2017年 SrearAlex. All rights reserved.
//

import UIKit

class FadeOutAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.4
    }
    
    // This method can only  be a nop if the transition is interactive and not a percentDriven interactive transition.
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning){
        if let fromView = transitionContext.view(forKey: .from) {
            let duration = transitionDuration(using: transitionContext)
            UIView.animate(withDuration: duration, animations: {
                fromView.alpha = 0
            }, completion: { (finished) in
                transitionContext.completeTransition(finished)
            })
        }
    }
}
