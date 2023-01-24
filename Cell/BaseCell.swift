//
//  BaseCell.swift
//  AppleRocket
//
//  Created by Kaue Ludovico on 16/01/23.
//

import UIKit

class BaseCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addSubviews() {
        // do nothing
    }

    func setConstraints() {
        // do nothing
    }
}

