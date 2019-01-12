//
//  FeedView.swift
//  Mvc Project
//
//  Created by Alper Tabak on 1.09.2018.
//  Copyright © 2018 Alper Tabak. All rights reserved.
//

import UIKit

protocol FeedViewDelegate: class {
	func feedView(_ view: FeedView, didTapButton button: UIButton)
	func feedCell(_ cell: FeedCell, didTapButton button: UIButton)
}
extension FeedViewDelegate {
	func feedView(_ view: FeedView, didTapButton button: UIButton) {
		
	}
}

class FeedView: View {
	
	weak var delegate: FeedViewDelegate?
	var feedItems: [Feed] = []
	
	lazy var tableView: UITableView = {
		let tableView = UITableView(frame: .zero)
		tableView.delegate = self
		tableView.dataSource = self
		tableView.register(FeedCell.self, forCellReuseIdentifier: "cellId")
		tableView.separatorStyle = .none
		tableView.backgroundColor = .white
		return tableView
	}()
	override func setViews() {
		backgroundColor = .white
		add(tableView)
	}
	override func layoutViews() {
		tableView.anchor(top: topAnchor, leading: leadingAnchor, bottom: safeBottomAnchor, trailing: trailingAnchor)
	}
}

extension FeedView: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return feedItems.count
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! FeedCell
		cell.item = feedItems[indexPath.row]
		cell.selectionStyle = .none
		cell.delegate = self
		return cell
	}
	func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
		return 164
	}
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 164
	}
}

extension FeedView: FeedCellDelegate {
	func feedCell(_ cell: FeedCell, didTapButton button: UIButton) {
		if button == cell.likeButton {
			print("liked")
			
		}else if button == cell.commentButton {
			
		}
		delegate?.feedCell(cell, didTapButton: button)
	}
}
