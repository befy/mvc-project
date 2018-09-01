//
//  MenuView.swift
//  Mvc Project
//
//  Created by Alper Tabak on 1.09.2018.
//  Copyright © 2018 Alper Tabak. All rights reserved.
//

import UIKit

class MenuView: View {
	
	var menuItems: [MenuModel] {
		return [
			MenuModel(imageName: "feed", menuLabel: "Feed"),
			MenuModel(imageName: "settings", menuLabel: "Settings"),
			MenuModel(imageName: "logout", menuLabel: "Logout")
		]
	}
	var person: Person? {
		didSet {
			profileImageView.image = UIImage(named: (person?.imageName)!)?.withRenderingMode(.alwaysOriginal)
			nameLabel.text = person?.fullName
			locationLabel.text = person?.location
		}
	}
	
	var profileImageView: UIImageView = {
		let iv = UIImageView()
		iv.backgroundColor = .black
		iv.layer.cornerRadius = 40
		iv.contentMode = .scaleAspectFit
		iv.clipsToBounds = true
		return iv
	}()
	var nameLabel: UILabel = {
		let label = UILabel(text: "Christian Troy", color: UIColor("4A4A4A"), size: 18, weight: UIFont.Weight.semibold)
		label.textAlignment = .center
		return label
	}()
	var locationLabel: UILabel = {
		let label = UILabel(text: "Los Angeles, CA", color: UIColor("9B9B9B"), size: 14, weight: UIFont.Weight.regular)
		label.textAlignment = .center
		return label
	}()
	
	lazy var userBioStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.axis = .vertical
		stackView.distribution = .equalSpacing
		stackView.spacing = 0
		stackView.alignment = .center
		stackView.addArrangedSubview(nameLabel)
		stackView.addArrangedSubview(locationLabel)
		return stackView
	}()
	
	lazy var tableView: UITableView = {
		let tableView = UITableView(frame: .zero, style: .grouped)
		tableView.delegate = self
		tableView.dataSource = self
		tableView.register(MenuCell.self, forCellReuseIdentifier: "cellId")
		tableView.separatorStyle = .none
		tableView.backgroundColor = .white
		tableView.rowHeight = 40
		tableView.isScrollEnabled = false
		return tableView
	}()
	
	override func setViews() {
		add(profileImageView)
		add(userBioStackView)
		add(tableView)
		backgroundColor = .white
		
	}
	override func layoutViews() {
		profileImageView.anchor(top: self.safeTopAnchor, leading: self.safeLeadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 40, left: 48, bottom: 0, right: 0), size: .init(width: 80, height: 80))
		
		/*nameLabel.anchor(top: profileImageView.bottomAnchor, leading: self.safeLeadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 12, left: 48, bottom: 0, right: 0))*/
		userBioStackView.anchor(top: profileImageView.bottomAnchor, leading: self.safeLeadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 12, left: 8, bottom: 0, right: 0), size: .init(width: 160, height: 40))
		
		tableView.anchor(top: userBioStackView.bottomAnchor, leading: self.safeLeadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 16, left: 16, bottom: 0, right: 0), size: .init(width: 200, height: 270))
	}
}

extension MenuView: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return menuItems.count
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! MenuCell
		cell.item = menuItems[indexPath.row]
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		self.tableView.deselectRow(at: indexPath, animated: true)
	}
	
}
