//
//  Table1VC.swift
//  Table
//
//  Created by Igor Guzei on 09.12.2022.
//

import UIKit

final class VC2: UIViewController {

    let table2 = UITableView()

    let tableData = ["content configuration",
                     ".register -> UITableViewCell.self",
                     "no Header",
                     "no Footre",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(table2)
        view.backgroundColor = .systemYellow
        navigationItem.title = "Table with data"

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
}
