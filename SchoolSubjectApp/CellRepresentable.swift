//
//  CellRepresentable.swift
//  SchoolSubjectApp
//
//  Created by Vaishakh on 5/27/17.
//  Copyright © 2017 Vaishakh. All rights reserved.
//

import UIKit

protocol CellRepresentable {
    var rowHeight: CGFloat {get}
    func cellInstance(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell
}
