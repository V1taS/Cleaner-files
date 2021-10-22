//
//  MainCleanerCoordinator.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 21.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import UIKit

public final class MainCleanerCoordinator {

	// MARK: - Private variables
	private let navigationController: UINavigationController
	private let services: ApplicationServices

	// MARK: - Initialization
	init(services: ApplicationServices, navigationController: UINavigationController) {
		self.services = services
		self.navigationController = navigationController
	}
}

extension MainCleanerCoordinator: Coordinator {
	public func start() {
		let vc = MainCleanerConfigurator.createModule(with: services)
		navigationController.viewControllers = [vc]
	}
}
