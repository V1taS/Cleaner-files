//
//  MainCleanerVC.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 22.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import UIKit

final class MainCleanerVC: CollectionViewController<MainCleaner2View> {

	// MARK: - Internal variables
	var interactor: MainCleanerInteractor?

	// MARK: - Private variables
	private let mainHeaderModel = MainHeaderDataSourceModel()

	// MARK: - Initialization
	init() {
		super.init(container: CollectionViewContainer(
			dataSources: [
				MainHeaderDataSource(viewModel: mainHeaderModel)
			]
		))
	}

	required init?(coder _: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	// MARK: - Internal funcs
	override func loadView() {
		view = MainCleaner2View()
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		applyDefaultBehavior()
		loadContent()
	}

	// MARK: - Private funcs
	private func applyDefaultBehavior() {
		view.backgroundColor = .yellow
		title = Constants.title
		navigationController?.navigationBar.prefersLargeTitles = true
	}

	private func loadContent() {
		interactor?.loadedView()
	}
}

extension MainCleanerVC: MainCleanerView {
	func updateVie(_ model: MainHeaderModel) {
		mainHeaderModel.usernameUpdated.send(model.name)
		mainHeaderModel.tabChanged.send(model.isEnabled)
		container.reload(shouldReloadCollection: true)
	}
}

private enum Constants {
	static var title: String { "Медиатека" }
}
