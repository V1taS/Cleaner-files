//
//  PermissionService.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 21.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import Foundation

public protocol PermissionService {
	func checkLibraryPermission(_  result: ( @escaping (PermissionResult) -> Void))
}
