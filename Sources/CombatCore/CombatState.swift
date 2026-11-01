import Foundation

/// A deliberately client-agnostic snapshot used by offline tests.
/// Populate only from data sources verified as available and permitted.
public struct CombatState: Equatable, Sendable {
    public var healthPercent: Double
    public var manaPercent: Double
    public var holyPower: Int
    public var enemyCount: Int
    public var inCombat: Bool

    public init(
        healthPercent: Double,
        manaPercent: Double,
        holyPower: Int,
        enemyCount: Int,
        inCombat: Bool
    ) {
        self.healthPercent = min(max(healthPercent, 0), 100)
        self.manaPercent = min(max(manaPercent, 0), 100)
        self.holyPower = max(holyPower, 0)
        self.enemyCount = max(enemyCount, 0)
        self.inCombat = inCombat
    }
}
