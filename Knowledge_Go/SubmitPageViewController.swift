//
//  SubmitPageViewController.swift
//  Knowledge_Go
//
//  Created by Ni Ryogo on 2021/03/06.
//

import UIKit

class SubmitPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        print("submitButtonTapped")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
