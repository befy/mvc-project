//
//  FeedCell.swift
//  Mvc Project
//
//  Created by Alper Tabak on 1.09.2018.
//  Copyright © 2018 Alper Tabak. All rights reserved.
//

import UIKit

protocol FeedCellDelegate: class {
	func feedCell(_ cell: FeedCell, didTapButton button: UIButton)
}

class FeedCell: BaseCell<Feed> {
	
	weak var delegate: FeedCellDelegate?
	
	override var item: Feed! {
		didSet {
			let person = item.person
			let image = UIImage(named: (person?.imageName)!)?.withRenderingMode(.alwaysOriginal)
			profileImageView.image = image
			fullNameLabel.text = person?.fullName
			timeAgoLabel.text = item.date
			contentText.text = item.content
			likeCounter.text = "\(item.likeCount)"
			commentCounter.text = "\(item.commentCount)"
		}
	}
	
	var profileImageView: UIImageView = {
		let iv = UIImageView()
		iv.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
		iv.layer.cornerRadius = 21
		iv.contentMode = .scaleAspectFit
		iv.clipsToBounds = true
		return iv
	}()
	
	var fullNameLabel: UILabel = {
		let label = UILabel(text: "name", color: .black, size: 15, weight: UIFont.Weight.semibold)
		return label
	}()
	
	var timeAgoLabel: UILabel = {
		let label = UILabel(text: "", color: UIColor("9B9B9B"), size: 13, weight: UIFont.Weight.regular)
		return label
	}()
	
	var contentText: UITextView = {
		let tv = UITextView()
		tv.isEditable = false
		tv.isScrollEnabled = false
		tv.backgroundColor = .clear
		tv.textColor = UIColor("9B9B9B")
		tv.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
		return tv
	}()
	
	var contentSeparator: UIView = {
		let view = UIView()
		view.backgroundColor = .clear
		return view
	}()
	
	var likeButton: UIButton = {
		let button = UIButton(type: .system)
		button.setImage(UIImage(named:"heart_icon")?.withRenderingMode(.alwaysOriginal), for: .normal)
		return button
	}()
	
	var likeCounter: UILabel = {
		let label = UILabel(text: "0", color: UIColor("4A4A4A"), size: 14, weight: UIFont.Weight.regular)
		return label
	}()
	
	var commentButton: UIButton = {
		let button = UIButton(type: .system)
		button.setImage(UIImage(named: "bubble-chat")?.withRenderingMode(.alwaysOriginal), for: .normal)
		
		return button
	}()
	
	var commentCounter: UILabel = {
		let label = UILabel(text: "0", color: UIColor("4A4A4A"), size: 14, weight: UIFont.Weight.regular)
		return label
	}()
	
	lazy var likeStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.axis = .horizontal
		stackView.spacing = 5
		stackView.distribution = .equalSpacing
		stackView.addArrangedSubview(likeButton)
		stackView.addArrangedSubview(likeCounter)
		return stackView
	}()
	
	lazy var commentStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.axis = .horizontal
		stackView.spacing = 5
		stackView.distribution = .equalSpacing
		stackView.addArrangedSubview(commentButton)
		stackView.addArrangedSubview(commentCounter)
		return stackView
	}()
	
	lazy var feedCounterStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.axis = .horizontal
		stackView.spacing = 20
		stackView.distribution = .equalSpacing
		stackView.addArrangedSubview(likeStackView)
		stackView.addArrangedSubview(commentStackView)
		return stackView
	}()
	
	override func setViews() {
		add(profileImageView, fullNameLabel, timeAgoLabel, contentText, contentSeparator, feedCounterStackView)
		likeButton.addTarget(self, action: #selector(handleAction(_:)), for: .touchUpInside)
		commentButton.addTarget(self, action: #selector(handleAction(_:)), for: .touchUpInside)
	}
	override func layoutViews() {
		profileImageView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: nil,padding: .init(top: 4, left: 24, bottom: 0, right: 0), size: .init(width: 42, height: 42))
		
		fullNameLabel.anchor(top: topAnchor, leading: profileImageView.trailingAnchor, bottom: nil, trailing: nil, padding: .init(top: 16, left: 8, bottom: 0, right: 0))
		
		timeAgoLabel.anchor(top: topAnchor, leading: nil, bottom: nil, trailing: trailingAnchor, padding: .init(top: 16, left: 0, bottom: 0, right: 16))
		
		contentText.anchor(top: profileImageView.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 16), size: .init(width: 0, height: 80))
		
		contentSeparator.anchor(top: contentText.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 1))
		
		feedCounterStackView.anchor(top: contentSeparator.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: nil, padding: .init(top: 0, left: 24, bottom: 0, right: 0), size: .init(width: 160, height: 0))
	}
	
	@objc func handleAction(_ button: UIButton) {
		delegate?.feedCell(self, didTapButton: button)
	}
}









