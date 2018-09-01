//
//  FeedViewController.swift
//  Mvc Project
//
//  Created by Alper Tabak on 1.09.2018.
//  Copyright © 2018 Alper Tabak. All rights reserved.
//

import UIKit

class FeedViewController: ViewController<FeedView> {
	override func viewDidLoad() {
		super.viewDidLoad()
		customView.backgroundColor = .white
		let menuIcon = UIImage(named: "menu_icon")?.withRenderingMode(.alwaysOriginal)
		self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: menuIcon, style: .plain, target: self, action: #selector(self.presentLeftMenuViewController(_:)))
		self.navigationItem.title = "Feed"
		
		customView.feedItems = [
			feed1, feed2, feed3, feed4, feed5
		]
		
	}
}

extension FeedViewController {
}
