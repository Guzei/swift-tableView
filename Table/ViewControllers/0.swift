//
//  VC0.swift
//  Table
//
//  Created by Igor Guzei on 10.12.2022.
//

import UIKit

final class VC0: UIViewController {

    let table0 = UITableView()                                                  // make Table

    override func viewDidLoad() {                                               // called after the view controller has loaded its view hierarchy into memory
        super.viewDidLoad()
        view.addSubview(table0)                                                 // add table into view controller
        view.backgroundColor = .systemYellow                                    // view controller color
        navigationItem.title = "deprecated .textLabel"

        table0.dataSource = self
        table0.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            table0.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            table0.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            table0.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            table0.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
        ])
    }
}

extension VC0: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {16}

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell()
        cell.backgroundColor = .cyan
        cell.textLabel!.text = "Row \(indexPath.row)"

        return cell
    }
}
