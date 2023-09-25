//
//  CheckTableViewCell.swift
//  ToDoListUIKit
//
//  Created by Gabriel Eduardo on 25/09/23.
//

import UIKit

class CheckTableViewCell: UITableViewCell {

    @IBOutlet weak var checkBox: Checkbox!
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func checked(_ sender: Checkbox) {
        updateChecked()
    }
    
    func set(title: String, checked: Bool) {
        label.text = title
        checkBox.checked = checked
        updateChecked()
    }
    
    private func updateChecked() {
        let attributedString = NSMutableAttributedString(string: label.text!)
        
        if checkBox.checked {
            attributedString.addAttribute(.strikethroughStyle, value: 2, range: NSMakeRange(0, attributedString.length - 1))
        } else {
            attributedString.removeAttribute(.strikethroughStyle, range: NSMakeRange(0, attributedString.length - 1))
        }

        label.attributedText = attributedString
    }
}
