//
//  PropertyType+CombineLatest.swift
//  PropertyComposition
//
//  Created by Nate Stedman on 1/21/16.
//  Copyright © 2016 Nate Stedman. All rights reserved.
//

import ReactiveCocoa

extension PropertyType
{
    /**
    Combines the latest value of the receiver with the latest value of the given property.

    - parameter otherProperty: The property to combine with the receiver.
    */
	@warn_unused_result
	public func combineLatestWith<Other: PropertyType>(otherProperty: Other) -> AnyProperty<(Value, Other.Value)>
    {
		return AnyProperty(
			initialValue: (value, otherProperty.value),
			producer: producer.combineLatestWith(otherProperty.producer).skip(1)
		)
	}
}


/// Combines the values of all the given properties, in the manner described by
/// `combineLatestWith`.
@warn_unused_result
public func combineLatest<A: PropertyType, B: PropertyType>(a: A, _ b: B) -> AnyProperty<(A.Value, B.Value)> {
    return a.combineLatestWith(b)
}

/// Combines the values of all the given properties, in the manner described by
/// `combineLatestWith`.
@warn_unused_result
public func combineLatest<A: PropertyType, B: PropertyType, C: PropertyType>(a: A, _ b: B, _ c: C) -> AnyProperty<(A.Value, B.Value, C.Value)> {
    return combineLatest(a, b)
        .combineLatestWith(c)
        .map(repack)
}

/// Combines the values of all the given properties, in the manner described by
/// `combineLatestWith`.
@warn_unused_result
public func combineLatest<A: PropertyType, B: PropertyType, C: PropertyType, D: PropertyType>(a: A, _ b: B, _ c: C, _ d: D) -> AnyProperty<(A.Value, B.Value, C.Value, D.Value)> {
    return combineLatest(a, b, c)
        .combineLatestWith(d)
        .map(repack)
}

/// Combines the values of all the given properties, in the manner described by
/// `combineLatestWith`.
@warn_unused_result
public func combineLatest<A: PropertyType, B: PropertyType, C: PropertyType, D: PropertyType, E: PropertyType>(a: A, _ b: B, _ c: C, _ d: D, _ e: E) -> AnyProperty<(A.Value, B.Value, C.Value, D.Value, E.Value)> {
    return combineLatest(a, b, c, d)
        .combineLatestWith(e)
        .map(repack)
}

/// Combines the values of all the given properties, in the manner described by
/// `combineLatestWith`.
@warn_unused_result
public func combineLatest<A: PropertyType, B: PropertyType, C: PropertyType, D: PropertyType, E: PropertyType, F: PropertyType>(a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F) -> AnyProperty<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value)> {
    return combineLatest(a, b, c, d, e)
        .combineLatestWith(f)
        .map(repack)
}

/// Combines the values of all the given properties, in the manner described by
/// `combineLatestWith`.
@warn_unused_result
public func combineLatest<A: PropertyType, B: PropertyType, C: PropertyType, D: PropertyType, E: PropertyType, F: PropertyType, G: PropertyType>(a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G) -> AnyProperty<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value, G.Value)> {
    return combineLatest(a, b, c, d, e, f)
        .combineLatestWith(g)
        .map(repack)
}

/// Combines the values of all the given properties, in the manner described by
/// `combineLatestWith`.
@warn_unused_result
public func combineLatest<A: PropertyType, B: PropertyType, C: PropertyType, D: PropertyType, E: PropertyType, F: PropertyType, G: PropertyType, H: PropertyType>(a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H) -> AnyProperty<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value, G.Value, H.Value)> {
    return combineLatest(a, b, c, d, e, f, g)
        .combineLatestWith(h)
        .map(repack)
}

/// Combines the values of all the given properties, in the manner described by
/// `combineLatestWith`.
@warn_unused_result
public func combineLatest<A: PropertyType, B: PropertyType, C: PropertyType, D: PropertyType, E: PropertyType, F: PropertyType, G: PropertyType, H: PropertyType, I: PropertyType>(a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I) -> AnyProperty<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value, G.Value, H.Value, I.Value)> {
    return combineLatest(a, b, c, d, e, f, g, h)
        .combineLatestWith(i)
        .map(repack)
}

/// Combines the values of all the given properties, in the manner described by
/// `combineLatestWith`.
@warn_unused_result
public func combineLatest<A: PropertyType, B: PropertyType, C: PropertyType, D: PropertyType, E: PropertyType, F: PropertyType, G: PropertyType, H: PropertyType, I: PropertyType, J: PropertyType>(a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J) -> AnyProperty<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value, G.Value, H.Value, I.Value, J.Value)> {
    return combineLatest(a, b, c, d, e, f, g, h, i)
        .combineLatestWith(j)
        .map(repack)
}
