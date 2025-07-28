//
//  PreviewTypeCell.swift
//  QuickLookExtentionViewDoc
//
//  Created by Hai Sombo on 6/26/24.
//

import UIKit

class PreviewTypeCell: UITableViewCell {

    @IBOutlet weak var imageFileView    : UIImageView!
    @IBOutlet weak var titleFile        : UILabel!
    @IBOutlet weak var subtitleFile     : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    func configure(with preview: Preview) {
        titleFile.text = preview.displayName
        subtitleFile.text = preview.formattedFileName
        
        if let thumb = preview.thumbnail {
            imageFileView.image = thumb
        }
    }
}
