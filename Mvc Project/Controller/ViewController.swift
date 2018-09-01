//
//  ViewController.swift
//  Mvc Project
//
//  Created by Alper Tabak on 1.09.2018.
//  Copyright © 2018 Alper Tabak. All rights reserved.
//

import UIKit

class ViewController<V: View>: UIViewController {

	override func loadView() {
		self.view = V()
	}
	
	var customView: V {
		return self.view as! V
	}


}

