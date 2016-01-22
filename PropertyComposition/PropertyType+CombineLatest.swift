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
