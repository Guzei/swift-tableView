//
//  4.swift
//  Table
//
//  Created by Igor Guzei on 10.12.2022.
//

import UIKit

final class VC4: UIViewController {

    let postIdentifier = "post"

    private lazy var table4: UITableView = {
        $0.backgroundColor = .systemGray5
        $0.dataSource = self
        $0.register(Cell.self, forCellReuseIdentifier: postIdentifier)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UITableView(frame: .zero, style: .grouped))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(table4)
        view.backgroundColor = .systemYellow
        navigationItem.title = "external data"
        NSLayoutConstraint.activate([
            table4.topAnchor.constraint(equalTo: view.topAnchor),
            table4.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            table4.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            table4.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

extension VC4: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { posts.count }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: postIdentifier, for: indexPath) as? Cell else { fatalError() }
        cell.config(post: posts[indexPath.row])
        return cell
    }
}

final class Cell: UITableViewCell {

    private lazy var cellAuthor: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var cellImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .black
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private lazy var cellDescription: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textColor = .systemGray
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews()
        setConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addSubviews() {
        contentView.addSubview(cellAuthor)
        contentView.addSubview(cellImage)
        contentView.addSubview(cellDescription)
    }

    let pagePadding = 16.0

    private func setConstraints() {
        NSLayoutConstraint.activate([

            cellAuthor.topAnchor.constraint(equalTo: contentView.topAnchor, constant: pagePadding),
            cellAuthor.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: pagePadding),
            cellAuthor.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -pagePadding),

            cellImage.topAnchor.constraint(equalTo: cellAuthor.bottomAnchor, constant: pagePadding),
            cellImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            cellImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            cellImage.heightAnchor.constraint(equalTo: cellImage.widthAnchor),

            cellDescription.topAnchor.constraint(equalTo: cellImage.bottomAnchor, constant: pagePadding),
            cellDescription.leadingAnchor.constraint(equalTo: cellAuthor.leadingAnchor),
            cellDescription.trailingAnchor.constraint(equalTo: cellAuthor.trailingAnchor),
            cellDescription.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,  constant: -pagePadding),
        ])
    }

    func config(post: Post) {

        cellAuthor.text = post.author
        cellImage.image = UIImage(named: post.image)
        cellDescription.text = post.description
    }
}
