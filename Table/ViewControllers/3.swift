//
//  3.swift
//  Table
//
//  Created by Igor Guzei on 10.12.2022.
//
//

import UIKit

final class VC3: UIViewController {

    let table3 = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(table3)
        view.backgroundColor = .systemYellow
        navigationItem.title = "UITableViewDelegate"

        table3.dataSource = self
        table3.delegate = self
        table3.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            table3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            table3.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            table3.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            table3.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
        ])
    }
}

extension VC3: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {16}

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell()
        cell.backgroundColor = .cyan
        var content = cell.defaultContentConfiguration()
        content.text = "Row \(indexPath). Click me."
        cell.contentConfiguration = content

        return cell
    }
}

extension VC3: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = table3.cellForRow(at: indexPath) {
            cell.backgroundColor = cell.backgroundColor == .cyan ? .systemYellow : .cyan
            var content = cell.defaultContentConfiguration()
            content.text = "Row \(indexPath)"
            content.secondaryText = String(indexPath.row)
            cell.contentConfiguration = content
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
