import Foundation



infix operator =--: AssignmentPrecedence


public func =--<T>(_ object: inout T, _ modifierBlock: (inout T) throws -> Void) rethrows {
	try modifierBlock(&object)
}


/* *** async variant *** */

public func =--<T>(_ object: inout T, _ modifierBlock: (inout T) async throws -> Void) async rethrows {
	try await modifierBlock(&object)
}
