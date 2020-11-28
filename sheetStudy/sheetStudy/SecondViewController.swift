//
//  SecondViewController.swift
//  sheetStudy
//
//  Created by shinichi teshirogi on 2020/11/28.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        print("\(type(of: self)): \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("\(type(of: self)): \(#function)")
    }
}
