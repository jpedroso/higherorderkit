# HigherOrderKit: Higher Order Functions for Cocoa.

HigherOrderKit is an attempt to bring common higher order functions to Objective-C, more specifically to Foundation framework classes.

Foundation framework already include higher order functions for some of its classes but they are little familiar with their equivalents in other languages, like Lisp, Haskell, JavaScript or Python to name a few.

Such functions include map, reduce (a.k.a. fold), select (a.k.a. filter), intersperse and, to some degree, also forEach.

## Setup/Installation

1. Bring this project's structure into your project's structure, a git submodule is a good start. I usually place it into <code>Frameworks/HigherOrderKit</code>.
1. Add <code>HigherOrderKit.xcodeproj</code> to your project.
1. For each of your targets, add HigherOrderKit's <code>HigherOrderKit</code> target as a direct dependency of the target (Target -> Command-I -> General -> Direct Dependencies).
1. For each of your targets, ensure <code>libHigherOrderKit.a</code> is included (linked against).
1. In your project, add HigherOrderKit's main directory to your Header Search Paths (<code>HEADER_SEARCH_PATHS</code>), e.g. <code>$(SRCROOT)/Frameworks/HigherOrderKit/Sources</code>.
1. Import <code>HigherOrderKit.h</code> where you want to use HigherOrderKit; your prefix header is a good spot.

## To Do

* Should we mimic the behaviour of Cocoa's API to inclue an index and stop variable in blocks arguments?