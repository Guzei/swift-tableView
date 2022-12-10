//
//  VC0.swift
//  Table
//
//  Created by Igor Guzei on 10.12.2022.
//

import UIKit

final class VC0: UIViewController {
    override func viewDidLoad() {                                               // called after the view controller has loaded its view hierarchy into memory
        super.viewDidLoad()
        navigationItem.title = "Table min-min"
        view.backgroundColor = .systemYellow                                    // view controller color

        let table0 = UITableView()                                              // make Table
        view.addSubview(table0)                                                 // add table into view controller
        table0.backgroundColor = .systemGray5                                   // table color
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

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {1}

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()                                            // cell for table
        cell.backgroundColor = .cyan                                            // cell color
        cell.textLabel!.text = "one cell with deprecated property .textLabel"
        return cell
    }
}
