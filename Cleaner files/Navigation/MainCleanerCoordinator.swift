//
//  MainCleanerCoordinator.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 21.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import UIKit

final class MainCleanerCoordinator {

	private let navigationController: UINavigationController
	private let services: ApplicationServices

	init(services: ApplicationServices, navigationController: UINavigationController) {
		self.services = services
		self.navigationController = navigationController
	}
}

extension MainCleanerCoordinator: Coordinator {

	func start() {
		let vc = ViewController()
		navigationController.viewControllers = [vc]
	}
}
