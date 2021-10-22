//
//  ApplicationServices.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 21.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import Foundation

public protocol ApplicationServices {
	var keyboardService: KeyboardService { get }
	var permissionService: PermissionService { get }
}

public final class ApplicationServicesImpl: ApplicationServices {

	// MARK: - Public variables
	public var keyboardService: KeyboardService {
		KeyboardServiceImpl()
	}
	
	public var permissionService: PermissionService {
		PermissionServiceImpl()
	}
}
