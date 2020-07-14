//
//  ViewController.swift
//  mpp-ios-demo
//
//  Created by Dexter Brylle Matos on 7/14/20.
//  Copyright © 2020 dexterbrylle. All rights reserved.
//

import UIKit
import DEH_MPP

class AccountsTableViewController: UITableViewController, AccountView {
//    func showState(state: AccountState) {
//        label = state.s
//    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let p = AccountsPresenter(view: self)
//        p.start()
//        self.label.text =
//        self.label.text = SampleKt.hello()
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//
//    @IBOutlet weak var label: UILabel!
    var accounts = [AccountsDisplay.Result]()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accounts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "AccountCellTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? AccountCellTableViewCell else {
            fatalError("The dequeued cell is not an instance of AccountCellTableViewCell")
        }
        let account = accounts[indexPath.row]
        cell.label.text = account.id
        cell.account_name.text = account.account_name
        return cell
    }
}
