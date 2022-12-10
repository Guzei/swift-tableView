//
//  4.swift
//  Table
//
//  Created by Igor Guzei on 10.12.2022.
//

import UIKit

final class VC4: UIViewController {

    let table4 = UITableView()

    let tableData = ["content configuration",
                     ".register -> UITableViewCell.self",
                     "no Header",
                     "no Footre",
                     "delegate",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(table4)
        view.backgroundColor = .systemYellow
        navigationItem.title = "data & delegate"

        table4.dataSource = self
        table4.delegate = self
        table4.register(UITableViewCell.self, forCellReuseIdentifier: "i1")     // Registers a class to use in creating new table cells
        table4.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            table4.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            table4.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            table4.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            table4.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
        ])
    }
}

extension VC4: UITableViewDataSource {

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

extension VC4: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = table4.cellForRow(at: indexPath) {
            cell.backgroundColor = cell.backgroundColor == .cyan ? .systemYellow : .cyan
            var content = cell.defaultContentConfiguration()
            content.text = tableData[indexPath.row]
            content.secondaryText = String(indexPath.row)
            cell.contentConfiguration = content
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
