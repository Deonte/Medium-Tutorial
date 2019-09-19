//
//  LoginView.swift
//  Medium Tut
//
//  Created by Deonte on 9/18/19.
//  Copyright © 2019 Deonte. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    let heroView: UIView = {
        let view = UIView()
        view.frame.origin.y -= 450
        view.backgroundColor = .heroMain
        view.layer.cornerRadius = 36
        view.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let heroImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Images.illustration
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Learn design & code.\nFrom scratch."
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "70 hours of video courses teaching SwiftUI,\nReact and design tools."
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bottomView: UIView = {
        let view = UIView()
        view.alpha = 0
        view.frame.origin.y += 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let inputContainerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.backgroundColor = .white
        view.layer.masksToBounds = false
        view.layer.applySketchShadow(color: .shadowDark, alpha: 0.1, x: 0, y: 40.0, blur: 40.0, spread: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let inceptionContainerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let line: UIView = {
        let view = UIView()
        view.backgroundColor = .lineColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let emailTextContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let passwordTextContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot password?", for: .normal)
        button.setTitleColor(.textColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("LOG IN", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = .buttonBackground
        button.tintColor = .white
        button.layer.cornerRadius = 16
        button.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        button.layer.applySketchShadow(color: .buttonBackground, alpha: 0.3, x: 0, y: 10.0, blur: 20.0, spread: 0)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let emailImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Images.email
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let passwordImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Images.password
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "YOUR EMAIL",
                                                      attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15, weight: .medium),
                                                                   NSAttributedString.Key.foregroundColor : UIColor.textColor])
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "PASSWORD",
                                                      attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15, weight: .medium),
                                                                   NSAttributedString.Key.foregroundColor : UIColor.textColor])
        tf.isSecureTextEntry = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAnimations()
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        backgroundColor = .background
        constrainTop()
        constrainBottom()
    }
    
    fileprivate func setupAnimations() {
        UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.4, options: [.curveEaseInOut], animations: {
            self.heroView.frame.origin.y += 400
        })
        
        UIView.animate(withDuration: 1, delay: 0.1, options:[.curveEaseInOut], animations: {
            self.bottomView.alpha = 1
            self.bottomView.frame.origin.y -= 10
        })
    }
    
    fileprivate func constrainTop() {
        addSubview(heroView)
        
        addConstraint(NSLayoutConstraint(item: heroView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: heroView, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: heroView, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: heroView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0.65, constant: 0))
        
        heroView.addSubview(heroImage)
        
        addConstraint(NSLayoutConstraint(item: heroImage, attribute: .top, relatedBy: .equal, toItem: heroView.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: heroImage, attribute: .centerX, relatedBy: .equal, toItem: heroView, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: heroImage, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0, constant: 279))
        addConstraint(NSLayoutConstraint(item: heroImage, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 272))
        
        heroView.addSubview(titleLabel)
        
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: heroImage, attribute: .bottom, multiplier: 1, constant: 24))
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .leading, relatedBy: .equal, toItem: heroView, attribute: .leading, multiplier: 1, constant: 16))
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .trailing, relatedBy: .equal, toItem: heroView, attribute: .trailing, multiplier: 1, constant: -16))
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 82))
        
        heroView.addSubview(subtitleLabel)
        
        addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 20))
        addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .leading, relatedBy: .equal, toItem: titleLabel, attribute: .leading, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .trailing, relatedBy: .equal, toItem: titleLabel, attribute: .trailing, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 52))
    }
    
    fileprivate func constrainBottom() {
        addSubview(bottomView)
        
        addConstraint(NSLayoutConstraint(item: bottomView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: bottomView, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: bottomView, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: bottomView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0.35, constant: 0))
        
        bottomView.addSubview(inputContainerView)
        
        addConstraint(NSLayoutConstraint(item: inputContainerView, attribute: .top, relatedBy: .equal, toItem: bottomView, attribute: .top, multiplier: 1, constant: 30))
        addConstraint(NSLayoutConstraint(item: inputContainerView, attribute: .trailing, relatedBy: .equal, toItem: bottomView, attribute: .trailing, multiplier: 1, constant: -16))
        addConstraint(NSLayoutConstraint(item: inputContainerView, attribute: .leading, relatedBy: .equal, toItem: bottomView, attribute: .leading, multiplier: 1, constant: 16))
        addConstraint(NSLayoutConstraint(item: inputContainerView, attribute: .height, relatedBy: .equal, toItem: bottomView.self, attribute: .height, multiplier: 0.55, constant: 0))

        inputContainerView.addSubview(inceptionContainerView)
        
        addConstraint(NSLayoutConstraint(item: inceptionContainerView, attribute: .top, relatedBy: .equal, toItem: inputContainerView, attribute: .top, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: inceptionContainerView, attribute: .trailing, relatedBy: .equal, toItem: inputContainerView, attribute: .trailing, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: inceptionContainerView, attribute: .leading, relatedBy: .equal, toItem: inputContainerView, attribute: .leading, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: inceptionContainerView, attribute: .bottom, relatedBy: .equal, toItem: inputContainerView, attribute: .bottom, multiplier: 1, constant: 0))
      
        inceptionContainerView.addSubview(emailTextContainer)
        
        addConstraint(NSLayoutConstraint(item: emailTextContainer, attribute: .top, relatedBy: .equal, toItem: inputContainerView, attribute: .top, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: emailTextContainer, attribute: .trailing, relatedBy: .equal, toItem: inputContainerView, attribute: .trailing, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: emailTextContainer, attribute: .leading, relatedBy: .equal, toItem: inputContainerView, attribute: .leading, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: emailTextContainer, attribute: .height, relatedBy: .equal, toItem: inputContainerView.self, attribute: .height, multiplier: 0.5, constant: 0))
        
        inceptionContainerView.addSubview(passwordTextContainer)
        
        addConstraint(NSLayoutConstraint(item: passwordTextContainer, attribute: .bottom, relatedBy: .equal, toItem: inputContainerView, attribute: .bottom, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: passwordTextContainer, attribute: .trailing, relatedBy: .equal, toItem: inputContainerView, attribute: .trailing, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: passwordTextContainer, attribute: .leading, relatedBy: .equal, toItem: inputContainerView, attribute: .leading, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: passwordTextContainer, attribute: .height, relatedBy: .equal, toItem: inputContainerView.self, attribute: .height, multiplier: 0.5, constant: 0))
        
        emailTextContainer.addSubview(emailImage)
        
        addConstraint(NSLayoutConstraint(item: emailImage, attribute: .centerY, relatedBy: .equal, toItem: emailTextContainer, attribute: .centerY, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: emailImage, attribute: .leading, relatedBy: .equal, toItem: emailTextContainer, attribute: .leading, multiplier: 1, constant: 12))
        addConstraint(NSLayoutConstraint(item: emailImage, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0, constant: 44))
        addConstraint(NSLayoutConstraint(item: emailImage, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 44))
        
        emailTextContainer.addSubview(emailTextField)
        
        addConstraint(NSLayoutConstraint(item: emailTextField, attribute: .top, relatedBy: .equal, toItem: emailTextContainer, attribute: .top, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: emailTextField, attribute: .leading, relatedBy: .equal, toItem: emailImage, attribute: .trailing, multiplier: 1, constant: 26))
        addConstraint(NSLayoutConstraint(item: emailTextField, attribute: .trailing, relatedBy: .equal, toItem: emailTextContainer, attribute: .trailing, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: emailTextField, attribute: .bottom, relatedBy: .equal, toItem: emailTextContainer, attribute: .bottom, multiplier: 1, constant: 0))
        
        passwordTextContainer.addSubview(passwordImage)
        
        addConstraint(NSLayoutConstraint(item: passwordImage, attribute: .centerY, relatedBy: .equal, toItem: passwordTextContainer, attribute: .centerY, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: passwordImage, attribute: .leading, relatedBy: .equal, toItem: passwordTextContainer, attribute: .leading, multiplier: 1, constant: 12))
        addConstraint(NSLayoutConstraint(item: passwordImage, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0, constant: 44))
        addConstraint(NSLayoutConstraint(item: passwordImage, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 44))
        
        passwordTextContainer.addSubview(passwordTextField)
        
        addConstraint(NSLayoutConstraint(item: passwordTextField, attribute: .top, relatedBy: .equal, toItem: passwordTextContainer, attribute: .top, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: passwordTextField, attribute: .leading, relatedBy: .equal, toItem: passwordImage, attribute: .trailing, multiplier: 1, constant: 26))
        addConstraint(NSLayoutConstraint(item: passwordTextField, attribute: .trailing, relatedBy: .equal, toItem: passwordTextContainer, attribute: .trailing, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: passwordTextField, attribute: .bottom, relatedBy: .equal, toItem: passwordTextContainer, attribute: .bottom, multiplier: 1, constant: 0))
       
        inputContainerView.addSubview(line)
        
        addConstraint(NSLayoutConstraint(item: line, attribute: .centerY, relatedBy: .equal, toItem: inputContainerView, attribute: .centerY, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: line, attribute: .trailing, relatedBy: .equal, toItem: inputContainerView, attribute: .trailing, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: line, attribute: .leading, relatedBy: .equal, toItem: emailTextField, attribute: .leading, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: line, attribute: .height, relatedBy: .equal, toItem: inputContainerView.self, attribute: .height, multiplier: 0, constant: 2))
     
        bottomView.addSubview(forgotPasswordButton)
        
        addConstraint(NSLayoutConstraint(item: forgotPasswordButton, attribute: .top, relatedBy: .equal, toItem: inputContainerView, attribute: .bottom, multiplier: 1, constant: 13))
        addConstraint(NSLayoutConstraint(item: forgotPasswordButton, attribute: .leading, relatedBy: .equal, toItem: inputContainerView, attribute: .leading, multiplier: 1, constant: 12))
        addConstraint(NSLayoutConstraint(item: forgotPasswordButton, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
        addConstraint(NSLayoutConstraint(item: forgotPasswordButton, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0, constant: 130))
        
        bottomView.addSubview(loginButton)
        
        addConstraint(NSLayoutConstraint(item: loginButton, attribute: .top, relatedBy: .equal, toItem: inputContainerView, attribute: .bottom, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: loginButton, attribute: .trailing, relatedBy: .equal, toItem: inputContainerView, attribute: .trailing, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: loginButton, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 44))
        addConstraint(NSLayoutConstraint(item: loginButton, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0, constant: 120))
    }
}
