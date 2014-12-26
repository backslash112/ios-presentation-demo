//
//  CustomPresentationController.swift
//  iOS-Presentation-Demo
//
//  Created by crossmo/yangcun on 14/12/26.
//  Copyright (c) 2014年 backslash112. All rights reserved.
//

import UIKit

class CustomPresentationController: UIPresentationController {
 
    lazy var dimmingView: UIView = {
        let view = UIView(frame: self.containerView!.frame)
        view.backgroundColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.4)
        view.alpha = 0.0
        return view
    }()
    
    
    override func presentationTransitionWillBegin() {
        self.dimmingView.frame = self.containerView.bounds
        self.containerView.addSubview(self.dimmingView)
        self.containerView.addSubview(self.presentedView())
        
        if let transitionCoordinator = self.presentingViewController.transitionCoordinator() {
            transitionCoordinator.animateAlongsideTransition({ (context: UIViewControllerTransitionCoordinatorContext!) -> Void in
                self.dimmingView.alpha = 1.0
            }, completion: nil)
            
        }
    }
    
    override func presentationTransitionDidEnd(completed: Bool) {
        
    }
    
    override func dismissalTransitionWillBegin() {
        
    }
    
    override func dismissalTransitionDidEnd(completed: Bool) {
        
    }
    
    override func frameOfPresentedViewInContainerView() -> CGRect {
        var frame = self.containerView.bounds
        frame = CGRectInset(frame, 50.0, 50.0)
        return frame
    }
    
}
