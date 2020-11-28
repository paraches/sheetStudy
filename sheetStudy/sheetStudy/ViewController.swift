//
//  ViewController.swift
//  sheetStudy
//
//  Created by shinichi teshirogi on 2020/11/28.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func unwindToFirstViewController(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
        print("\(type(of: self)): \(#function)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        print("\(type(of: self)): \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("\(type(of: self)): \(#function)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showThirdViewControllerSegue", let vc = segue.destination as? ThirdViewController {
            vc.delegate = self
        }
    }
}

extension ViewController: ThirdViewControllerProtocol {
    func viewDidDismiss() {
        print("\(type(of: self)): \(#function)")
    }
}
