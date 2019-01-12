//
//  BaseCell.swift
//  Mvc Project
//
//  Created by Alper Tabak on 1.09.2018.
//  Copyright © 2018 Alper Tabak. All rights reserved.
//

import UIKit

class BaseCell<U>: UITableViewCell {
	
	var item: U!
	
	override var frame: CGRect {
		get {
			return super.frame
		}
		set (newFrame) {
			var frame =  newFrame
			frame.origin.y += 4
			frame.size.height -= 2 * 5
			super.frame = frame
		}
	}

	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setViews()
		layoutViews()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setViews()
		layoutViews()
	}
	
	func setViews(){}
	func layoutViews(){}
}
