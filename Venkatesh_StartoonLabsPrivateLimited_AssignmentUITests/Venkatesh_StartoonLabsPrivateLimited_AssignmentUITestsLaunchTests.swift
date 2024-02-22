//
//  Venkatesh_StartoonLabsPrivateLimited_AssignmentUITestsLaunchTests.swift
//  Venkatesh_StartoonLabsPrivateLimited_AssignmentUITests
//
//  Created by Venkatesh Nyamagoudar on 2/22/24.
//

import XCTest

final class Venkatesh_StartoonLabsPrivateLimited_AssignmentUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
