//
//  SignInHeaderView.swift
//  Thoughts
//
//  Created by Mark Goncharov on 24.02.2023.
//

import UIKit

class SignInHeaderView: UIView {

    private let imageView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "logo"))
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .systemPink
        return image
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.text = "Explore millions of articles!"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        addSubview(imageView)
        addSubview(label)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let size: CGFloat = width/4
        
        imageView.frame = CGRect(
            x: (width-size)/2,
            y: 10,
            width: size,
            height: size)
        
        label.frame = CGRect(
            x: 20,
            y: imageView.bottom+10,
            width: width-40,
            height: height-size-30)
    }
}
