//
//  Table1VC.swift
//  Table
//
//  Created by Igor Guzei on 09.12.2022.
//

import UIKit

final class VC1: UIViewController {
    
    let table1 = UITableView()                                                  // make Table

    override func viewDidLoad() {                                               // called after the view controller has loaded its view hierarchy into memory
        super.viewDidLoad()
        view.addSubview(table1)                                                 // add table into view controller
        view.backgroundColor = .systemYellow                                    // view controller color
        navigationItem.title = "cell.defaultContentConfiguration()"

        table1.dataSource = self
        table1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            table1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            table1.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            table1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            table1.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
        ])
    }
}

extension VC1: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {16}

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell()
        cell.backgroundColor = .cyan
        var content = cell.defaultContentConfiguration()
        content.text = "Row \(indexPath.row)"
        cell.contentConfiguration = content

        return cell
    }
}
