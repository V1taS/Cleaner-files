//
//  MainHeaderDataSourceModel.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 22.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import Foundation
import Combine

final class MainHeaderDataSourceModel {
	var usernameUpdated = CurrentValueSubject<String?, Never>(nil)
	var tabChanged = CurrentValueSubject<Bool, Never>(false)
}
