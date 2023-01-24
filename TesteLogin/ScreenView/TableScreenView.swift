//
//  ListPhoneScreenView.swift
//  AppleRocket
//
//  Created by Kaue Ludovico on 16/01/23.
//

import UIKit

class ListPhoneScreenView: BaseView {
    let cellId = "cellId"
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: bounds)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: cellId)
        return tableView
    }()
    
    override func addSubviews() {
        addSubview(tableView)
    }
    
    override func setConstraints() {
        tableView.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: bounds.width, height: bounds.height))
    }
}
