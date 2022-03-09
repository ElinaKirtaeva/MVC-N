//
//  CommentCell.swift
//  MVC-N
//
//  Created by Элина Рупова on 08.03.2022.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var label: UILabel!
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
