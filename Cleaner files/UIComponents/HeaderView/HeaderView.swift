//
//  CleanerHeaderView.swift
//  Cleaner files
//
//  Created by Vitalii Sosin on 22.10.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import UIKit

public final class HeaderView: UIView, GenericCellSubview {

    // MARK: - Private variables
	let label = UILabel()

	public override var intrinsicContentSize: CGSize {
		CGSize(width: UIView.noIntrinsicMetric, height: 150)
	}

	// MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLayout()
        applyDefaultBehavior()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureLayout()
        applyDefaultBehavior()
    }

    // MARK: - Private funcs
    private func apply() {
    }

    private func configureLayout() {
		label.translatesAutoresizingMaskIntoConstraints = false
		addSubview(label)

		NSLayoutConstraint.activate([
			label.centerXAnchor.constraint(equalTo: centerXAnchor),
			label.centerYAnchor.constraint(equalTo: centerYAnchor)
		])
    }

    private func applyDefaultBehavior() {
    }
}

private enum Constants {
}
