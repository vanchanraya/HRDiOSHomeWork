//
//  IGTableViewCell.swift
//  InstagramDemo
//
//  Created by KEA Vanchanraya on 2/12/19.
//  Copyright © 2019 KEA Vanchanraya. All rights reserved.
//

import UIKit

class IGTableViewCell: UITableViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var accountName: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var bookmarkButton: UIButton!
    @IBOutlet weak var likeLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
