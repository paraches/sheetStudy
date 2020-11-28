//
//  ThirdViewController.swift
//  sheetStudy
//
//  Created by shinichi teshirogi on 2020/11/28.
//

import Foundation
import UIKit

protocol ThirdViewControllerProtocol {
    func viewDidDismiss()
}

class ThirdViewController: UIViewController {
    var delegate: ThirdViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presentationController?.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("\(type(of: self)): \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("\(type(of: self)): \(#function)")
    }

}

extension ThirdViewController: UIAdaptivePresentationControllerDelegate {
    func presentationControllerShouldDismiss(_ presentationController: UIPresentationController) -> Bool {
        print("\(type(of: self)): \(#function)")
        return true
    }
    
    func presentationControllerDidAttemptToDismiss(_ presentationController: UIPresentationController) {
        print("\(type(of: self)): \(#function)")
    }
    
    func presentationControllerWillDismiss(_ presentationController: UIPresentationController) {
        print("\(type(of: self)): \(#function)")
    }
    
    func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
        print("\(type(of: self)): \(#function)")
        delegate?.viewDidDismiss()
    }
}
