//
//  ViewController.swift
//  SchoolSubjectApp
//
//  Created by Vaishakh on 5/27/17.
//  Copyright © 2017 Vaishakh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var data = [CellRepresentable]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        initUI()
        loadData()
        tableView.reloadData()
    }
    
    func initUI() {
        tableView.register(UINib.init(nibName: "SubjectTableViewCell", bundle: nil), forCellReuseIdentifier: "subjecttableviewcell")
    }
    
    func loadData() {
        data = [SubjectViewModel.init(subject: Subject(subjectName: "Hello", subjectDescription: "Hello", subjectCoverImage: nil))]
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return data[indexPath.row].rowHeight
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return data[indexPath.row].cellInstance(tableView, indexPath: indexPath)
    }
}



