//
//  SubjectTableViewCell.swift
//  SchoolSubjectApp
//
//  Created by Vaishakh on 5/27/17.
//  Copyright © 2017 Vaishakh. All rights reserved.
//

import UIKit

class SubjectTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    // TODO : This will contain code to setup TableViewCell
    func setupTableCellModel(vm: SubjectViewModel) {
        self.titleLabel.text = vm.subject.subjectName
    }
    
}
