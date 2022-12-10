//
//  Table1VC.swift
//  Table
//
//  Created by Igor Guzei on 09.12.2022.
//
// https://developer.apple.com/documentation/uikit/views_and_controls/table_views?language=swift#//apple_ref/doc/uid/TP40007451

import UIKit

final class VC1: UIViewController {
    override func viewDidLoad() {                                               // called after the view controller has loaded its view hierarchy into memory
        super.viewDidLoad()
        navigationItem.title = "Table min-min"
        view.backgroundColor = .systemYellow                                    // view controller color

        let table1 = UITableView()                                              // make Table
        view.addSubview(table1)                                                 // add table into view controller
        table1.backgroundColor = .systemGray5                                   // table color
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

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {1}

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()                                            // cell for table
        cell.backgroundColor = .cyan                                            // cell color
        var content = cell.defaultContentConfiguration()
        content.text = "cell.defaultContentConfiguration()"
        cell.contentConfiguration = content
        return cell
    }
}
