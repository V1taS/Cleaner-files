//
//  MainCleanerVC.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 22.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import UIKit

final class MainCleanerVC: UIViewController {

	// MARK: - Internal variables
	var interactor: MainCleanerInteractor?

	// MARK: - Private variables

	// MARK: - Internal funcs
	override func viewDidLoad() {
		super.viewDidLoad()
		applyDefaultBehavior()
		interactor?.loadedView()
	}

	// MARK: - Private funcs
	private func applyDefaultBehavior() {
		view.backgroundColor = .yellow
	}
}

extension MainCleanerVC: MainCleanerView {
}

private enum Constants {
}
