import XCTest
@testable import CombatCore

final class DecisionEngineTests: XCTestCase {
    func testOutOfCombatReturnsNoAction() {
        let state = CombatState(healthPercent: 100, manaPercent: 100,
                                holyPower: 0, enemyCount: 0, inCombat: false)
        XCTAssertEqual(DecisionEngine().evaluate(state), .noAction)
    }

    func testCriticalHealthTakesPriority() {
        let state = CombatState(healthPercent: 15, manaPercent: 50,
                                holyPower: 3, enemyCount: 2, inCombat: true)
        XCTAssertEqual(DecisionEngine().evaluate(state), .emergencyReview)
    }

    func testLowHealthRequestsDefensiveReview() {
        let state = CombatState(healthPercent: 35, manaPercent: 70,
                                holyPower: 2, enemyCount: 1, inCombat: true)
        XCTAssertEqual(DecisionEngine().evaluate(state), .defensiveReview)
    }

    func testHealthyCombatRequestsRotationReview() {
        let state = CombatState(healthPercent: 90, manaPercent: 80,
                                holyPower: 1, enemyCount: 1, inCombat: true)
        XCTAssertEqual(DecisionEngine().evaluate(state), .rotationReview)
    }
}
