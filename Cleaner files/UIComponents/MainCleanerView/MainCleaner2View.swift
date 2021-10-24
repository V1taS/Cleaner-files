//
//  MainCleaner2View.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 22.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import UIKit

public final class MainCleaner2View: UIView, CollectionViewHolderProtocol {

	// MARK: - Public variables

	// MARK: - Internal variables
	let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

	// MARK: - Private variables

	// MARK: - Initialization
	override init(frame: CGRect) {
		super.init(frame: frame)
		configureLayout()
		applyDefaultBehavior()
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		configureLayout()
		applyDefaultBehavior()
	}

	// MARK: - Private funcs
	private func apply() {
	}

	private func configureLayout() {
		collectionView.translatesAutoresizingMaskIntoConstraints = false
		addSubview(collectionView)
		NSLayoutConstraint.activate([
			collectionView.topAnchor.constraint(equalTo: topAnchor),
			collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
			collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
			collectionView.trailingAnchor.constraint(equalTo: trailingAnchor)
		])
	}

	private func applyDefaultBehavior() {
		backgroundColor = UIColor.systemGroupedBackground
	}
}

private enum Constants {
}
