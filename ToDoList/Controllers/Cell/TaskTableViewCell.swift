//
//  TaskCellTableViewCell.swift
//  ToDoList
//
//  Created by Anton Nepotenko on 2023-09-09.
//

import UIKit

protocol TaskTableViewCellDelegate: AnyObject {}

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var cellTitle: UILabel!
    
    @IBOutlet weak var cellDescription: UILabel!
    
    @IBOutlet weak var cellDeadline: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func tappedStatusButton(_ sender: Any) {
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
