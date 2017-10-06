//
//  UIViewController.swift
//  Practical-chainAnimations
//
//  Created by Amir Shabani(Twitter: @_Schabaani) on 10/6/17.
//  Copyright © 2017 Sete. All rights reserved.
//

import UIKit

extension UIViewController {
    func hideNavigationBar(){
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
    }
    
    func showNavigationBar() {
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
}
