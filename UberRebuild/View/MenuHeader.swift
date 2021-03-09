//
//  MenuHeader.swift
//  UberRebuild
//
//  Created by Edward McGuiggan on 3/4/21.
//

import UIKit

class MenuHeader: UIView {
    
    
//    var user: User? {
//        didSet {
//            fullnameLabel.text = user?.fullname
//            emailLabel.text = user?.email
//        }
//    }
    
    private let user: User
    
    private let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .lightGray
        return iv
    }()
    
    private lazy var fullnameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .lightGray
        label.text = "Ted McGuiggan"
        label.text = user.fullname
        return label
    }()
    
    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        label.text = "test@gmail.com"
        label.text = user.email
        return label
    }()
    
    
    init(user: User, frame: CGRect) {
        self.user = user
        super.init(frame: frame)
        
        backgroundColor = .backgroundColor
        
        addSubview(profileImageView)
        profileImageView.anchor(top: topAnchor, left: leftAnchor, paddingTop: 44, paddingLeft: 12, width: 64, height: 64)
        profileImageView.layer.cornerRadius = 64/2
        
        let stack = UIStackView(arrangedSubviews: [fullnameLabel, emailLabel])
        stack.distribution = .fillEqually
        stack.spacing = 4
        stack.axis = .vertical
        
        addSubview(stack)
        stack.centerY(inView: profileImageView, leftAnchor: profileImageView.rightAnchor, paddingLeft: 12)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
