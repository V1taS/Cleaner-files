//
//  DefaultMainCleanerPresenter.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 22.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import Foundation
import Combine

final class DefaultMainCleanerPresenter {

	// MARK: - Internal variables
    weak var view: MainCleanerView?

	// MARK: - Initialization
    init(view: MainCleanerView) {
        self.view = view
    }
}

extension DefaultMainCleanerPresenter: MainCleanerPresenter {
	func handleView(_ result: MainHeaderModel) {
		view?.updateVie(result)
	}
}
