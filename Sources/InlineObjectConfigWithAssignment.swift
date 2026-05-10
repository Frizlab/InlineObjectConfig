import Foundation



infix operator =--: AssignmentPrecedence


public func =--<T>(_ object: inout T, _ modifierBlock: (inout T) throws -> Void) rethrows {
	try modifierBlock(&object)
}


/* *** async variant *** */

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public func =--<T>(_ object: inout T, _ modifierBlock: (inout T) async throws -> Void) async rethrows {
	try await modifierBlock(&object)
}
