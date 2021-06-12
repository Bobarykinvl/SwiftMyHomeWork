//
//  File.swift
//  Bobarykin_Vladislav_Home_Work_12
//
//  Created by Vladislav Bobarykin on 04.05.2021.
//

import Foundation
import UIKit

class BookCell: UITableViewCell {
    
    static let cellIdentificator: String = "BookCell"
    
// MARK: UI
    
    let imageViewOfBook: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 12
        image.image = UIImage(named: "book1")
        image.backgroundColor = .red
        image.clipsToBounds = true
        return image
    }()

    let titleOfBook: UILabel = {
        let title = UILabel()
        title.textColor = .black
        title.numberOfLines = .zero
        title.font = .systemFont(ofSize: 16, weight: .bold)
        return title
    }()

    let authorOfBook: UILabel = {
        let title = UILabel()
        title.textColor = .gray
        title.numberOfLines = .zero
        title.font = .systemFont(ofSize: 14, weight: .bold)
        return title
    }()

    let priceOfBook: UILabel = {
        let title = UILabel()
        title.textColor = .black
        title.font = .systemFont(ofSize: 24, weight: .bold)
        return title
    }()
    
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureAllView()
    }
    required init?(coder: NSCoder) {
        return nil
    }
}
    

// MARK: constraints
    
private extension BookCell {
    
    func configureAllView() {
        configureImage()
        configureTitle()
        configureAuthor()
        configurePrice()
    }

    func configureImage() {
        contentView.addSubview(imageViewOfBook)
        imageViewOfBook.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageViewOfBook.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imageViewOfBook.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 30),
            imageViewOfBook.widthAnchor.constraint(equalToConstant: 65),
            imageViewOfBook.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func configureTitle() {
        contentView.addSubview(titleOfBook)
        titleOfBook.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleOfBook.leftAnchor.constraint(equalTo: imageViewOfBook.rightAnchor, constant: 15),
            titleOfBook.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            titleOfBook.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -40)
        ])
        
    }
    func configureAuthor() {
        contentView.addSubview(authorOfBook)
        authorOfBook.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            authorOfBook.leftAnchor.constraint(equalTo: titleOfBook.leftAnchor),
            authorOfBook.topAnchor.constraint(equalTo: titleOfBook.bottomAnchor, constant: 5),
            authorOfBook.rightAnchor.constraint(equalTo: titleOfBook.rightAnchor)
        ])
        
    }
    func configurePrice() {
        contentView.addSubview(priceOfBook)
        priceOfBook.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            priceOfBook.leftAnchor.constraint(equalTo: titleOfBook.leftAnchor),
            priceOfBook.topAnchor.constraint(equalTo: authorOfBook.bottomAnchor, constant: 15),
            priceOfBook.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -35),
            priceOfBook.rightAnchor.constraint(equalTo: titleOfBook.rightAnchor)
        ])
    }
    
}
    
 
    
    

