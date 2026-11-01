import Foundation

public enum SuggestedAction: String, Equatable, Sendable {
    case emergencyReview
    case defensiveReview
    case rotationReview
    case noAction
}

/// Milestone 1 placeholder evaluator. This intentionally produces review
/// categories rather than game inputs or spell-cast commands.
public struct DecisionEngine: Sendable {
    public init() {}

    public func evaluate(_ state: CombatState) -> SuggestedAction {
        guard state.inCombat else { return .noAction }
        if state.healthPercent <= 20 { return .emergencyReview }
        if state.healthPercent <= 45 { return .defensiveReview }
        return .rotationReview
    }
}
