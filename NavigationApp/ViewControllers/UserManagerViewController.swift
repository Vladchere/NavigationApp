//
//  UserManegerViewController.swift
//  NavigationApp
//
//  Created by Vladislav on 25.03.2021.
//

import UIKit

class UserManagerViewController: UIViewController {

	// MARK: - IB Outlet
	@IBOutlet weak var userNameTextField: UITextField!
	@IBOutlet weak var editUserButton: UIButton!
	@IBOutlet weak var newUserButton: UIButton!

	// MARK: - Public properties
	var editModeIsOn = false
	var userName: String!

	// MARK: - Life cycle method
	override func viewDidLoad() {
		super.viewDidLoad()

		newUserButton.isHidden = editModeIsOn ? true : false
		editUserButton.isHidden = editModeIsOn ? false : true
		userNameTextField.text = userName
	}

	// MARK: - IB action
	@IBAction func cancelAction() {
		dismiss(animated: true)
	}
}
