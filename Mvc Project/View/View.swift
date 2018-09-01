//
//  View.swift
//  Mvc Project
//
//  Created by Alper Tabak on 1.09.2018.
//  Copyright © 2018 Alper Tabak. All rights reserved.
//

import UIKit

class View: UIView {
	override init(frame: CGRect) {
		super.init(frame: frame)
		setViews()
		layoutViews()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setViews()
		layoutViews()
	}
	
	//MARK:- Set your views in here
	func setViews(){}
	
	//MARK:- Layout your views in here
	func layoutViews(){}
}
