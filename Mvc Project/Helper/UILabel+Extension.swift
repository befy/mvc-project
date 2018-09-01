//
//  UILabel+Extension.swift
//  Mvc Project
//
//  Created by Alper Tabak on 1.09.2018.
//  Copyright © 2018 Alper Tabak. All rights reserved.
//

import UIKit

extension UILabel {
	public convenience init(
		text: String,
		color: UIColor,
		size: CGFloat,
		weight: UIFont.Weight = UIFont.Weight.medium
	){
		self.init()
		self.text = text
		self.textColor = color
		self.font = UIFont.systemFont(ofSize: size, weight: weight)
	}
}
