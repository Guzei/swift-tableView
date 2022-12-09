//
//  Table1VC.swift
//  Table
//
//  Created by Igor Guzei on 09.12.2022.
//

import UIKit

final class Table1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Table min-min"
        view.backgroundColor = .systemYellow

        let tableView = UITableView()
        view.addSubview(tableView)
        tableView.backgroundColor = .systemRed
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
        ])
    }
}

    extension Table1: UITableViewDataSource{

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {1}

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell: UITableViewCell = {
                $0.backgroundColor = .cyan
                $0.textLabel?.text = "Deprecated property .textLabel"
                return $0
            }(UITableViewCell())

            return cell
        }
    }

    extension Table1: UITableViewDelegate{}
