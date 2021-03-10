//
//  NotificationPageViewController.swift
//  Knowledge_Go
//
//  Created by Ni Ryogo on 2021/03/06.
//

import UIKit

class NotificationPageViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    var dataSource:[Dictionary<String,String>] = [
        ["quiz":"ココス天久保店で,統計学のp値について"],
        ["quiz":"スターバックス,つくば駅店で,タコの生態について"],
        ["quiz":"ミスタードーナツ,つくば駅店で,重積分の方法について"],
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tableViewSetup()
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension NotificationPageViewController: UITableViewDataSource,UITableViewDelegate {
    
    private func tableViewSetup(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "NotifiactionQuestionCell", bundle: nil), forCellReuseIdentifier: "NotifiactionQuestionCell")
        tableView.tableFooterView = UIView() //区切り線をなくす
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotifiactionQuestionCell", for: indexPath ) as! NotifiactionQuestionCell
        cell.selectionStyle = .none
        cell.cellLabel.text = dataSource[indexPath.row]["quiz"]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
}



