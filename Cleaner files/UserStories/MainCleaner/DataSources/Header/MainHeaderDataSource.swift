//
//  MainHeaderDataSource.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 22.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import UIKit
import Combine

final class MainHeaderDataSource: CollectionViewDataSource {

	// MARK: - Internal variables
	var delegate: CollectionViewDataSourceContainerDelegate?
	var isEnabled: Bool = true

	var numberOfSections: Int {
		return isEnabled ? 1 : 0
	}

	var cellsForRegistration: [AppCollectionViewCell.Type]? {
		return [GenericCollectionViewCell<HeaderView>.self]
	}

	// MARK: - Private variables
	private let viewModel: MainHeaderDataSourceModel
	private var cancellable = Set<AnyCancellable>()

	// MARK: - Initialization
	init(viewModel: MainHeaderDataSourceModel) {
		self.viewModel = viewModel
		self.viewModel.usernameUpdated.sink { [weak self] (name) in
			self?.reloadCurrentSectionIfLoaded()
		}.store(in: &cancellable)
	}

	// MARK: - Internal func
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		let size = CGSize(
			width: collectionView.frame.width,
			height: 150
		)
		return CGSize(width: collectionView.frame.width, height: size.height)
	}

	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCellWithType(
			GenericCollectionViewCell<HeaderView>.self,
			indexPath: indexPath
		)
		cell.customSubview.backgroundColor = .red

		self.viewModel.usernameUpdated.sink { [weak cell] (name) in
			cell?.customSubview.label.text = name
		}.store(in: &cell.cancellable)

		self.viewModel.tabChanged.sink { [weak self] (bool) in
			guard let self = self else { return }
			self.isEnabled = bool
		}.store(in: &cell.cancellable)

		return cell
	}

	func numberOfItems(inSection section: Int) -> Int {
		1
	}
}
