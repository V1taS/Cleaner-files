//
//  DefaultMainCleanerInteractor.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 22.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import Foundation

final class DefaultMainCleanerInteractor {

	// MARK: - Internal variables
    let presenter: MainCleanerPresenter
    let router: MainCleanerRouter
    let services: ApplicationServices

	// MARK: - Internal funcs
    init(_ presenter: MainCleanerPresenter, _ router: MainCleanerRouter, and services: ApplicationServices) {
        self.presenter = presenter
        self.router = router
        self.services = services
    }
}

extension DefaultMainCleanerInteractor: MainCleanerInteractor {
    func loadedView() {
    }
}
