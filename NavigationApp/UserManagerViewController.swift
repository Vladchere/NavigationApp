//
//  UserManegerViewController.swift
//  NavigationApp
//
//  Created by Vladislav on 25.03.2021.
//

import UIKit

class UserManagerViewController: UIViewController {
	@IBOutlet weak var userNameTextField: UITextField!
	@IBOutlet weak var editUserButton: UIButton!
	@IBOutlet weak var newUserButton: UIButton!

	var editModeIsOn = false
	var userName: String!

	override func viewDidLoad() {
		super.viewDidLoad()

		newUserButton.isHidden = editModeIsOn ? true : false
		editUserButton.isHidden = editModeIsOn ? false : true
		userNameTextField.text = userName
	}

	@IBAction func cancelAction() {
		dismiss(animated: true)
	}
}
