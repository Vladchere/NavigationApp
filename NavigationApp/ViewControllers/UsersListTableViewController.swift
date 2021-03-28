//
//  UsersListTableViewController.swift
//  NavigationApp
//
//  Created by Vladislav on 26.03.2021.
//

import UIKit

class UsersListTableViewController: UITableViewController {

	// MARK: - Private property
	private var users = ["Rick", "Morty"]

	// MARK: - Life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		tableView.reloadData()
	}

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return users.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

		cell.textLabel?.text = users[indexPath.row]

        return cell
    }

	// MARK: - Navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "showDetails" {
			guard let userDetailsVC = segue.destination as? UserDetailsViewController else { return }
			
			if let indexPath = tableView.indexPathForSelectedRow {
				userDetailsVC.userName = users[indexPath.row]
			}
		}
	}

	@IBAction func unwindSegue(segue: UIStoryboardSegue) {
		guard let userManagerVC = segue.source as? UserManagerViewController else { return }
		var name = ""

		if let text = userManagerVC.userNameTextField.text {
			name = (text == "") ? "No name" : text
		}

		users.append(name)
	}
}
