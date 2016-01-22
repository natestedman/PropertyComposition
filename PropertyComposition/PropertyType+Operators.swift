// PropertyComposition
// Written in 2016 by Nate Stedman <nate@natestedman.com>
//
// To the extent possible under law, the author(s) have dedicated all copyright and
// related and neighboring rights to this software to the public domain worldwide.
// This software is distributed without any warranty.
//
// You should have received a copy of the CC0 Public Domain Dedication along with
// this software. If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

import ReactiveCocoa

extension PropertyType
{
    /**
     Maps each value in the property to a new value.

     - parameter transform: The value transformation function.
     */
    @warn_unused_result
    public func map<U>(transform: Value -> U) -> AnyProperty<U>
    {
        return AnyProperty(
            initialValue: transform(value),
            signal: signal.map(transform)
        )
    }
}
