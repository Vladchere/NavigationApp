//
//  UserDetailsViewController.swift
//  NavigationApp
//
//  Created by Vladislav on 25.03.2021.
//

import UIKit

class UserDetailsViewController: UIViewController {

	// MARK: - IB Outlet
	@IBOutlet weak var userNameLabel: UILabel!

	// MARK: - Public property
	var userName: String!

	// MARK: - Life cycle method
    override func viewDidLoad() {
        super.viewDidLoad()
		userNameLabel.text = userName
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let userManagerVC = segue.destination as? UserManagerViewController else { return }
		userManagerVC.userName = userName
		userManagerVC.editModeIsOn = true
    }

	@IBAction func unwindSegue(segue: UIStoryboardSegue) {
		guard let userManagerVC = segue.source as? UserManagerViewController else { return }

		userNameLabel.text = userManagerVC.userNameTextField.text
	}
}
