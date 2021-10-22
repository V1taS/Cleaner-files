//
//  MainCleanerConfigurator.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 22.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import UIKit

enum MainCleanerConfigurator {
    static func createModule(with services: ApplicationServices) -> UIViewController {
        let vc = MainCleanerVC()
        let presenter = DefaultMainCleanerPresenter(view: vc)
        let router = DefaultMainCleanerRouter()
        let interactor = DefaultMainCleanerInteractor(presenter, router, and: services)
        vc.interactor = interactor
        return vc
    }
}
