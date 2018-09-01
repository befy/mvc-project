//
//  MenuCell.swift
//  Mvc Project
//
//  Created by Alper Tabak on 1.09.2018.
//  Copyright © 2018 Alper Tabak. All rights reserved.
//

import UIKit

class MenuCell: BaseCell<MenuModel> {
	
	override var item: MenuModel! {
		didSet {
			let generateImage = UIImage(named: item.imageName)?.withRenderingMode(.alwaysOriginal)
			menuIcon.image = generateImage
			menuTitleLabel.text = item.menuLabel
		}
	}
	
	var menuIcon: UIImageView = {
		let iv = UIImageView()
		iv.contentMode = .scaleAspectFit
		return iv
	}()
	var menuTitleLabel: UILabel = {
		let label = UILabel(text: "home", color: UIColor("4A4A4A"), size: 15, weight: UIFont.Weight.semibold)
		return label
	}()
	override func setViews() {
		add(menuIcon, menuTitleLabel)
		
	}
	override func layoutViews() {
		menuIcon.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: nil, padding: .init(top: 4, left: 4, bottom: 4, right: 0), size: .init(width: 16, height: 0))
		menuTitleLabel.anchor(top: topAnchor, leading: menuIcon.trailingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 4, left: 16, bottom: 4, right: 0), size: .zero)
		
	}
}
