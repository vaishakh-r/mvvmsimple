//
//  SubjectViewModel.swift
//  SchoolSubjectApp
//
//  Created by Vaishakh on 5/27/17.
//  Copyright © 2017 Vaishakh. All rights reserved.
//

import UIKit

class SubjectViewModel: CellRepresentable {
    var rowHeight: CGFloat = 60
    var subject: Subject
    
    func cellInstance(_ tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subjecttableviewcell", for: indexPath) as! SubjectTableViewCell
        cell.setupTableCellModel(vm: self)
        return cell
    }
    
    init(subject: Subject) {
        self.subject = subject
    }
    
}
