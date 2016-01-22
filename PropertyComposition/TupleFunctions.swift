// This code is from ReactiveCocoa, under this license:

// Copyright (c) 2012 - 2015, GitHub, Inc.
// All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of
// this software and associated documentation files (the "Software"), to deal in
// the Software without restriction, including without limitation the rights to
// use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
// the Software, and to permit persons to whom the Software is furnished to do so,
// subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

internal func repack<A, B, C>(t: (A, B), value: C) -> (A, B, C) {
    return (t.0, t.1, value)
}

internal func repack<A, B, C, D>(t: (A, B, C), value: D) -> (A, B, C, D) {
    return (t.0, t.1, t.2, value)
}

internal func repack<A, B, C, D, E>(t: (A, B, C, D), value: E) -> (A, B, C, D, E) {
    return (t.0, t.1, t.2, t.3, value)
}

internal func repack<A, B, C, D, E, F>(t: (A, B, C, D, E), value: F) -> (A, B, C, D, E, F) {
    return (t.0, t.1, t.2, t.3, t.4, value)
}

internal func repack<A, B, C, D, E, F, G>(t: (A, B, C, D, E, F), value: G) -> (A, B, C, D, E, F, G) {
    return (t.0, t.1, t.2, t.3, t.4, t.5, value)
}

internal func repack<A, B, C, D, E, F, G, H>(t: (A, B, C, D, E, F, G), value: H) -> (A, B, C, D, E, F, G, H) {
    return (t.0, t.1, t.2, t.3, t.4, t.5, t.6, value)
}

internal func repack<A, B, C, D, E, F, G, H, I>(t: (A, B, C, D, E, F, G, H), value: I) -> (A, B, C, D, E, F, G, H, I) {
    return (t.0, t.1, t.2, t.3, t.4, t.5, t.6, t.7, value)
}

internal func repack<A, B, C, D, E, F, G, H, I, J>(t: (A, B, C, D, E, F, G, H, I), value: J) -> (A, B, C, D, E, F, G, H, I, J) {
    return (t.0, t.1, t.2, t.3, t.4, t.5, t.6, t.7, t.8, value)
}
