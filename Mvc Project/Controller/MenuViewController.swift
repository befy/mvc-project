//
//  MenuViewController.swift
//  Mvc Project
//
//  Created by Alper Tabak on 1.09.2018.
//  Copyright © 2018 Alper Tabak. All rights reserved.
//

import UIKit

class MenuViewController: ViewController<MenuView> {
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		customView.person = christianTroy
	}
}
