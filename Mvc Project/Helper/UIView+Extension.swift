//
//  UIView+Extension.swift
//  Mvc Project
//
//  Created by Alper Tabak on 1.09.2018.
//  Copyright © 2018 Alper Tabak. All rights reserved.
//

import UIKit

extension UIView {
	var safeTopAnchor: NSLayoutYAxisAnchor {
		if #available(iOS 11.0, *) {
			return self.safeAreaLayoutGuide.topAnchor
		} else {
			return self.topAnchor
		}
	}
	var safeLeftAnchor: NSLayoutXAxisAnchor {
		if #available(iOS 11.0, *){
			return self.safeAreaLayoutGuide.leftAnchor
		}else {
			return self.leftAnchor
		}
	}
	var safeLeadingAnchor: NSLayoutXAxisAnchor {
		if #available(iOS 11.0, *){
			return safeAreaLayoutGuide.leadingAnchor
		}else {
			return leadingAnchor
		}
	}
	var safeRightAnchor: NSLayoutXAxisAnchor {
		if #available(iOS 11.0, *){
			return self.safeAreaLayoutGuide.rightAnchor
		}else {
			return self.rightAnchor
		}
	}
	var safeTrailingAnchor: NSLayoutXAxisAnchor {
		if #available(iOS 11.0, *){
			return safeAreaLayoutGuide.trailingAnchor
		}else {
			return trailingAnchor
		}
	}
	
	var safeBottomAnchor: NSLayoutYAxisAnchor {
		if #available(iOS 11.0, *) {
			return self.safeAreaLayoutGuide.bottomAnchor
		} else {
			return self.bottomAnchor
		}
	}
	
	func add(_ subviews: UIView...) {
		subviews.forEach(addSubview)
	}
	
	//UIEdgeInsets.zero
	func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0), size: CGSize = .zero){
		translatesAutoresizingMaskIntoConstraints = false
		if let top = top {
			topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
		}
		if let leading = leading {
			leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
		}
		if let bottom = bottom {
			bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
		}
		if let trailing = trailing {
			trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
		}
		
		if size.height != 0 {
			heightAnchor.constraint(equalToConstant: size.height).isActive = true
		}
		if size.width != 0 {
			widthAnchor.constraint(equalToConstant: size.width).isActive = true
		}
		
	}
}
