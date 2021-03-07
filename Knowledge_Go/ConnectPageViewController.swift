//
//  ConnectPageViewController.swift
//  Knowledge_Go
//
//  Created by Ni Ryogo on 2021/03/06.
//

import UIKit

class ConnectPageViewController: UIViewController {

    
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var questionLabel1: UILabel!
    @IBOutlet weak var questionLabel2: UILabel!
    @IBOutlet weak var questionLabel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func tappedQuestionSwitch(_ sender: UISwitch) {
        let label_array = [questionLabel1,questionLabel2,questionLabel3]
        if sender.isOn {
            for item in label_array {
                item?.isHidden = false
            }
        }else{
            for item in label_array {
                item?.isHidden = true
            }
        }
    }
    
    @IBAction func tappedReviewButton(_ sender: UISwitch) {
        let label_array = [reviewLabel]
        if sender.isOn {
            for item in label_array {
                item?.isHidden = false
            }
        }else{
            for item in label_array {
                item?.isHidden = true
            }
        }
    }
}
