//
//  Table1VC.swift
//  Table
//
//  Created by Igor Guzei on 09.12.2022.
//

import UIKit

final class VC2: UIViewController {

    let tableData = ["content configuration",
                     ".register -> UITableViewCell.self",
                     "min Header & Footre",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Table with data"
        view.backgroundColor = .systemYellow

        let table2 = UITableView()
        view.addSubview(table2)
        table2.backgroundColor = .systemGray5
        table2.dataSource = self
        table2.register(UITableViewCell.self, forCellReuseIdentifier: "i1")     // Registers a class to use in creating new table cells
        table2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            table2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            table2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            table2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            table2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
        ])
    }
}

extension VC2: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {tableData.count}

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath ) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "i1", for: indexPath)
        cell.backgroundColor = .cyan
        var content = cell.defaultContentConfiguration()
        content.text = tableData[indexPath.row]
        cell.contentConfiguration = content

        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Header"
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Footer"
    }
}
