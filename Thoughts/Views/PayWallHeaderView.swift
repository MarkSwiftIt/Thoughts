//
//  PayWallHeaderView.swift
//  Thoughts
//
//  Created by Mark Goncharov on 23.02.2023.
//

import UIKit

class PayWallHeaderView: UIView {

    private let headerImageView: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "crown.fill"))
        image.frame = CGRect(x: 0, y: 0, width: 110, height: 110)
        image.tintColor = .white
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        addSubview(headerImageView)
        backgroundColor = .systemPink
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        headerImageView.frame = CGRect(x: (bounds.width - 110)/2, y: (bounds.height - 110)/2, width: 110, height: 110)
    }
}
