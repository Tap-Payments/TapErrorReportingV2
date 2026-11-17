//
//  Bundle+ErrorReporting.swift
//  TapErrorReporting
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import Foundation
import TapAdditionsKitV2

internal extension Bundle {
	
	// MARK: - Internal -
	// MARK: Properties
	
	static let errorReportingResources: Bundle = {
		
		#if SWIFT_PACKAGE
		// Swift Package Manager puts the xib and strings in the package's own resource bundle.
		return Bundle.module
		#else
		guard let result = Bundle(for: ErrorReporter.self).tap_childBundle(named: Constants.errorReportingResourcesBundleName) else {
			
			fatalError("There is no \(Constants.errorReportingResourcesBundleName) bundle.")
		}
		
		return result
		#endif
	}()
	
	// MARK: - Private -
	
	private struct Constants {
		
		fileprivate static let errorReportingResourcesBundleName = "ErrorReportingResources"
		
		@available(*, unavailable) private init() {}
	}
}
