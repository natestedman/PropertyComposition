// PropertyComposition
// Written in 2016 by Nate Stedman <nate@natestedman.com>
//
// To the extent possible under law, the author(s) have dedicated all copyright and
// related and neighboring rights to this software to the public domain worldwide.
// This software is distributed without any warranty.
//
// You should have received a copy of the CC0 Public Domain Dedication along with
// this software. If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

import PropertyComposition
import ReactiveCocoa
import XCTest

class PropertyCompositionTests: XCTestCase
{
    func testMap()
    {
        let property = MutableProperty(0)
        let mapped = property.map({ $0 + 1 })

        XCTAssertEqual(mapped.value, 1)
        property.value = 1
        XCTAssertEqual(mapped.value, 2)
    }

    func testCombineLatestWith()
    {
        let properties = (MutableProperty(0), MutableProperty(0))
        let combined = properties.0.combineLatestWith(properties.1)

        XCTAssertEqual(combined.value.0, 0)
        XCTAssertEqual(combined.value.1, 0)

        properties.0.value = 1
        XCTAssertEqual(combined.value.0, 1)
        XCTAssertEqual(combined.value.1, 0)

        properties.1.value = 1
        XCTAssertEqual(combined.value.0, 1)
        XCTAssertEqual(combined.value.1, 1)
    }
}
