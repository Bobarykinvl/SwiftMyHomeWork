//
//  ViewController.swift
//  Bobarykin_Vladislav_Home_Work_12
//
//  Created by Vladislav Bobarykin on 04.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var books:[BookModel] = [
        .init(title: "Hobbit", author: "J.R.R Tolkien", image: "book1", price: 15),
        .init(title: "Harry Potter", author:"J.K. Rovling", image: "book2", price: 18),
        .init(title: "Love", author:"V.A. Bobarykin", image: "book3", price: 12),
        .init(title: "Book 4", author:"J.R.R Tolkien", image: "book4", price: 300),
        .init(title: "Harry Potter", author:"J.K. Rovling", image: "book5", price: 18),
        .init(title: "Book 6", author:"V.A. Bobarykin", image: "book6", price: 18)
    ]
    
   lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
        
// MARK: - Register
        
        tableView.register(BookCell.self, forCellReuseIdentifier: BookCell.cellIdentificator)
    }
}

// MARK: - UITableViewDataSource
    
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BookCell.cellIdentificator, for: indexPath) as? BookCell else {
            return .init()
        }
//        cell.imageViewOfBook.image
        cell.imageViewOfBook.image = UIImage(named:books[indexPath.row].image)
        cell.titleOfBook.text = books[indexPath.row].title
        cell.authorOfBook.text = books[indexPath.row].author
        cell.priceOfBook.text = "$\(books[indexPath.row].price)"
        return cell
    }
    
}


