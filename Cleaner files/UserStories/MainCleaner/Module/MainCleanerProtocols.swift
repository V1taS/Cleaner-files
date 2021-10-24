//
//  MainCleanerProtocols.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 22.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import Foundation

protocol MainCleanerInteractor {
	func loadedView()
}

protocol MainCleanerPresenter {
	func handleView(_ result: MainHeaderModel)
}

protocol MainCleanerView: AnyObject {
	func updateVie(_ model: MainHeaderModel)
}

protocol MainCleanerRouter: AnyObject {
}
