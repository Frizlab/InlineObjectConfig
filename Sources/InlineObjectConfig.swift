import Foundation



infix operator --:  BitwiseShiftPrecedence
infix operator --?: BitwiseShiftPrecedence

public func --<T>(_ objectCreator: @autoclosure () throws -> T, _ modifierBlock: (inout T) throws -> Void) rethrows -> T {
	var res = try objectCreator()
	try modifierBlock(&res)
	return res
}

public func --?<T>(_ objectCreator: @autoclosure () throws -> T?, _ modifierBlock: (inout T) throws -> Void) rethrows -> T? {
	guard var res = try objectCreator() else {
		return nil
	}
	try modifierBlock(&res)
	return res
}
