;; ./mach.d/mo-tab.scm

;; Copyright (c) 2015-2018 Matthew R. Wette
;; 
;; This library is free software; you can redistribute it and/or
;; modify it under the terms of the GNU Lesser General Public
;; License as published by the Free Software Foundation; either
;; version 3 of the License, or (at your option) any later version.
;; See the file COPYING.LESSER included with the this distribution.

(define mo-len-v
  #(1 0 2 1 3 2 3 2 4 3 3 2 2 1 1 1 2 1 1 2 1 1 1 3 3 2 2 2 1 1 1 1 1 5 7 6 7
    7 7 9 1 1 3 0 1 1 0 1 0 1 1 3 2 4 3 3 2 1 1 2 1 2 1 2 1 1 5 4 4 4 3 3 3 2 
    1 6 5 4 3 1 2 3 1 1 5 4 3 2 1 0 1 0 1 0 1 0 1 0 1 0 1 1 4 2 1 1 3 3 3 1 1 
    2 3 1 3 4 3 3 2 3 2 4 3 3 2 3 2 2 2 1 1 1 1 1 1 1 1 1 1 1 1 1 3 3 2 2 3 0 
    1 0 1 3 1 2 2 3 2 1 1 3 1 1 3 2 2 1 1 1 3 0 1 4 0 1 0 1 1 1 1 4 3 4 2 3 2 
    2 1 3 2 2 1 1 2 3 2 3 1 1 1 1 2 2 3 2 3 2 6 1 1 1 1 1 1 7 6 6 5 2 1 1 2 2 
    1 2 1 7 6 6 5 2 1 1 2 2 1 2 1 6 5 6 5 1 3 3 1 6 5 6 1 2 3 4 6 1 2 3 4 6 1 
    7 6 4 5 1 5 3 1 3 1 3 1 2 1 3 1 1 1 1 1 1 1 3 1 1 1 1 1 3 1 1 1 1 1 3 3 1 
    2 2 1 1 1 1 2 2 1 2 3 3 3 1 3 1 2 3 1 1 2 3 1 2 3 2 1 1 1 3 1 1 3 3 3 5 4 
    1 1 1 3 1 1 3 3 1 3 1 1 2 1 0 1 1 1 3 0 2 2 1 1 1 1))

(define mo-pat-v
  #((($:function shift . 1) ($:pure shift . 2) ($:impure shift . 3) (
    $:package shift . 4) ($:type shift . 5) ($:connector shift . 6) (
    $:expandable shift . 7) ($:block shift . 8) ($:record shift . 9) (
    $:operator shift . 10) ($:model shift . 11) ($:class shift . 12) (
    class-prefixes-1 shift . 13) ($:partial shift . 14) (class-prefixes shift 
    . 15) ($:encapsulated shift . 16) (class-definition shift . 17) ($:final 
    shift . 18) ($:within shift . 19) (stored-definition-2 shift . 20) 
    (stored-definition-1 shift . 21) (stored-definition shift . 22) ($end 
    reduce . 1)) (($ident reduce . 28) ($:extends reduce . 28)) (($:operator 
    shift . 46) ($:function shift . 47)) (($:operator shift . 44) ($:function 
    shift . 45)) (($ident reduce . 22) ($:extends reduce . 22)) (($ident 
    reduce . 21) ($:extends reduce . 21)) (($ident reduce . 20) ($:extends 
    reduce . 20)) (($:connector shift . 43)) (($ident reduce . 18) ($:extends 
    reduce . 18)) (($ident reduce . 17) ($:extends reduce . 17)) (($:record 
    shift . 41) ($:function shift . 42) ($ident reduce . 29) ($:extends reduce
    . 29)) (($ident reduce . 15) ($:extends reduce . 15)) (($ident reduce . 14
    ) ($:extends reduce . 14)) (($:extends reduce . 13) ($ident reduce . 13)) 
    (($:function shift . 1) ($:pure shift . 2) ($:impure shift . 3) ($:package
    shift . 4) ($:type shift . 5) ($:connector shift . 6) ($:expandable shift 
    . 7) ($:block shift . 8) ($:record shift . 9) ($:operator shift . 10) 
    ($:model shift . 11) ($:class shift . 12) (class-prefixes-1 shift . 40)) 
    (($ident shift . 26) ($:extends shift . 34) (ident shift . 35) (
    der-class-specifier shift . 36) (short-class-specifier shift . 37) 
    (long-class-specifier shift . 38) (class-specifier shift . 39)) ((
    $:function shift . 1) ($:pure shift . 2) ($:impure shift . 3) ($:package 
    shift . 4) ($:type shift . 5) ($:connector shift . 6) ($:expandable shift 
    . 7) ($:block shift . 8) ($:record shift . 9) ($:operator shift . 10) 
    ($:model shift . 11) ($:class shift . 12) (class-prefixes-1 shift . 13) 
    ($:partial shift . 14) (class-prefixes shift . 33)) ((#{$:;}# shift . 32))
    (($:function shift . 1) ($:pure shift . 2) ($:impure shift . 3) ($:package
    shift . 4) ($:type shift . 5) ($:connector shift . 6) ($:expandable shift 
    . 7) ($:block shift . 8) ($:record shift . 9) ($:operator shift . 10) 
    ($:model shift . 11) ($:class shift . 12) (class-prefixes-1 shift . 13) 
    ($:partial shift . 14) (class-prefixes shift . 15) ($:encapsulated shift 
    . 16) (class-definition shift . 31)) (($ident shift . 26) ($:. shift . 27)
    (ident shift . 28) (name shift . 29) (#{$:;}# shift . 30)) (($:final shift
    . 24) ($:function shift . 1) ($:pure shift . 2) ($:impure shift . 3) 
    ($:package shift . 4) ($:type shift . 5) ($:connector shift . 6) (
    $:expandable shift . 7) ($:block shift . 8) ($:record shift . 9) (
    $:operator shift . 10) ($:model shift . 11) ($:class shift . 12) (
    class-prefixes-1 shift . 13) ($:partial shift . 14) (class-prefixes shift 
    . 15) ($:encapsulated shift . 16) (class-definition shift . 25) ($end 
    reduce . 3)) (($:function shift . 1) ($:pure shift . 2) ($:impure shift . 
    3) ($:package shift . 4) ($:type shift . 5) ($:connector shift . 6) 
    ($:expandable shift . 7) ($:block shift . 8) ($:record shift . 9) (
    $:operator shift . 10) ($:model shift . 11) ($:class shift . 12) (
    class-prefixes-1 shift . 13) ($:partial shift . 14) (class-prefixes shift 
    . 15) ($:encapsulated shift . 16) (class-definition shift . 17) ($:final 
    shift . 18) (stored-definition-2 shift . 23)) (($end accept . 0)) (
    ($:final shift . 24) ($:function shift . 1) ($:pure shift . 2) ($:impure 
    shift . 3) ($:package shift . 4) ($:type shift . 5) ($:connector shift . 6
    ) ($:expandable shift . 7) ($:block shift . 8) ($:record shift . 9) 
    ($:operator shift . 10) ($:model shift . 11) ($:class shift . 12) (
    class-prefixes-1 shift . 13) ($:partial shift . 14) (class-prefixes shift 
    . 15) ($:encapsulated shift . 16) (class-definition shift . 25) ($end 
    reduce . 2)) (($:function shift . 1) ($:pure shift . 2) ($:impure shift . 
    3) ($:package shift . 4) ($:type shift . 5) ($:connector shift . 6) 
    ($:expandable shift . 7) ($:block shift . 8) ($:record shift . 9) (
    $:operator shift . 10) ($:model shift . 11) ($:class shift . 12) (
    class-prefixes-1 shift . 13) ($:partial shift . 14) (class-prefixes shift 
    . 15) ($:encapsulated shift . 16) (class-definition shift . 63)) ((#{$:;}#
    shift . 62)) (($:import reduce . 357) ($:extends reduce . 357) ($:function
    reduce . 357) ($:pure reduce . 357) ($:impure reduce . 357) ($:package 
    reduce . 357) ($:type reduce . 357) ($:connector reduce . 357) (
    $:expandable reduce . 357) ($:block reduce . 357) ($:record reduce . 357) 
    ($:operator reduce . 357) ($:model reduce . 357) ($:class reduce . 357) 
    ($:partial reduce . 357) ($:encapsulated reduce . 357) ($:stream reduce . 
    357) ($:flow reduce . 357) ($:constant reduce . 357) ($:parameter reduce 
    . 357) ($:discrete reduce . 357) ($:output reduce . 357) ($:input reduce 
    . 357) ($ident reduce . 357) ($:. reduce . 357) ($:replaceable reduce . 
    357) ($:outer reduce . 357) ($:inner reduce . 357) ($:final reduce . 357) 
    ($:redeclare reduce . 357) ($string reduce . 357) ($:= reduce . 357) 
    (#{$:;}# reduce . 357) (#{$:\x28;}# reduce . 357) (#{$:\x5b;}# reduce . 
    357) ($::= reduce . 357) (#{$:\x29;}# reduce . 357) ($:, reduce . 357) 
    ($:annotation reduce . 357) ($:if reduce . 357) ($:: reduce . 357) 
    ($:or reduce . 357) ($:and reduce . 357) ($:< reduce . 357) ($:<= reduce 
    . 357) ($:> reduce . 357) ($:>= reduce . 357) ($:== reduce . 357) ($:<> 
    reduce . 357) ($:.- reduce . 357) ($:.+ reduce . 357) ($:- reduce . 357) 
    ($:+ reduce . 357) ($:* reduce . 357) ($:/ reduce . 357) ($:.* reduce . 
    357) ($:./ reduce . 357) ($:.^ reduce . 357) ($:^ reduce . 357) (
    #{$:\x5d;}# reduce . 357) (#{$:\x7d;}# reduce . 357) ($:then reduce . 357)
    ($:loop reduce . 357) ($:in reduce . 357) ($:else reduce . 357) ($:elseif 
    reduce . 357) ($:constrainedby reduce . 357) ($:end reduce . 357) (
    $:elsewhen reduce . 357)) (($ident shift . 26) (ident shift . 61)) 
    ((#{$:;}# reduce . 311) ($:. reduce . 311) (#{$:\x5b;}# reduce . 311) 
    ($ident reduce . 311) (#{$:\x29;}# reduce . 311) ($string reduce . 311) 
    (#{$:\x28;}# reduce . 311) ($::= reduce . 311) ($:= reduce . 311) ($:, 
    reduce . 311) ($:annotation reduce . 311) ($:: reduce . 311) ($:^ reduce 
    . 311) ($:.^ reduce . 311) ($:./ reduce . 311) ($:.* reduce . 311) 
    ($:/ reduce . 311) ($:* reduce . 311) ($:+ reduce . 311) ($:- reduce . 311
    ) ($:.+ reduce . 311) ($:.- reduce . 311) ($:<> reduce . 311) ($:== reduce
    . 311) ($:>= reduce . 311) ($:> reduce . 311) ($:<= reduce . 311) ($:< 
    reduce . 311) ($:and reduce . 311) ($:or reduce . 311) (#{$:\x5d;}# reduce
    . 311) ($:then reduce . 311) ($:loop reduce . 311) ($:else reduce . 311) 
    ($:elseif reduce . 311) ($:constrainedby reduce . 311) (#{$:\x7d;}# reduce
    . 311) ($:end reduce . 311) ($:elsewhen reduce . 311) ($:stream reduce . 
    311) ($:flow reduce . 311) ($:constant reduce . 311) ($:parameter reduce 
    . 311) ($:discrete reduce . 311) ($:output reduce . 311) ($:input reduce 
    . 311) ($:if reduce . 311)) ((#{$:;}# shift . 59) ($:. shift . 60)) 
    (($:function reduce . 5) ($:pure reduce . 5) ($:impure reduce . 5) 
    ($:package reduce . 5) ($:type reduce . 5) ($:connector reduce . 5) 
    ($:expandable reduce . 5) ($:block reduce . 5) ($:record reduce . 5) 
    ($:operator reduce . 5) ($:model reduce . 5) ($:class reduce . 5) (
    $:partial reduce . 5) ($:encapsulated reduce . 5) ($:final reduce . 5)) 
    ((#{$:;}# shift . 58)) (($:function reduce . 7) ($:pure reduce . 7) 
    ($:impure reduce . 7) ($:package reduce . 7) ($:type reduce . 7) (
    $:connector reduce . 7) ($:expandable reduce . 7) ($:block reduce . 7) 
    ($:record reduce . 7) ($:operator reduce . 7) ($:model reduce . 7) 
    ($:class reduce . 7) ($:partial reduce . 7) ($:encapsulated reduce . 7) 
    ($:final reduce . 7) ($end reduce . 7)) (($ident shift . 26) ($:extends 
    shift . 34) (ident shift . 35) (der-class-specifier shift . 36) (
    short-class-specifier shift . 37) (long-class-specifier shift . 38) 
    (class-specifier shift . 57)) (($ident shift . 26) (ident shift . 56)) 
    (($string shift . 50) (string shift . 51) (string-cat-1 shift . 52) 
    (string-cat shift . 53) (string-comment shift . 54) ($:= shift . 55) 
    ($:import reduce . 347) ($:extends reduce . 347) ($:function reduce . 347)
    ($:pure reduce . 347) ($:impure reduce . 347) ($:package reduce . 347) 
    ($:type reduce . 347) ($:connector reduce . 347) ($:expandable reduce . 
    347) ($:block reduce . 347) ($:record reduce . 347) ($:operator reduce . 
    347) ($:model reduce . 347) ($:class reduce . 347) ($:partial reduce . 347
    ) ($:encapsulated reduce . 347) ($:stream reduce . 347) ($:flow reduce . 
    347) ($:constant reduce . 347) ($:parameter reduce . 347) ($:discrete 
    reduce . 347) ($:output reduce . 347) ($:input reduce . 347) ($ident 
    reduce . 347) ($:. reduce . 347) ($:replaceable reduce . 347) ($:outer 
    reduce . 347) ($:inner reduce . 347) ($:final reduce . 347) ($:redeclare 
    reduce . 347)) ((#{$:;}# reduce . 32) ($:constrainedby reduce . 32)) 
    ((#{$:;}# reduce . 31) ($:constrainedby reduce . 31)) ((#{$:;}# reduce . 
    30) ($:constrainedby reduce . 30)) ((#{$:;}# reduce . 11) ($:constrainedby
    reduce . 11)) (($:extends reduce . 12) ($ident reduce . 12)) (($ident 
    reduce . 16) ($:extends reduce . 16)) (($ident reduce . 27) ($:extends 
    reduce . 27)) (($ident reduce . 19) ($:extends reduce . 19)) (($:function 
    shift . 49)) (($ident reduce . 25) ($:extends reduce . 25)) (($:function 
    shift . 48)) (($ident reduce . 26) ($:extends reduce . 26)) (($ident 
    reduce . 24) ($:extends reduce . 24)) (($ident reduce . 23) ($:extends 
    reduce . 23)) (($:redeclare reduce . 358) ($:final reduce . 358) ($:inner 
    reduce . 358) ($:outer reduce . 358) ($:replaceable reduce . 358) ($:. 
    reduce . 358) ($ident reduce . 358) ($:input reduce . 358) ($:output 
    reduce . 358) ($:discrete reduce . 358) ($:parameter reduce . 358) 
    ($:constant reduce . 358) ($:flow reduce . 358) ($:stream reduce . 358) 
    ($:encapsulated reduce . 358) ($:partial reduce . 358) ($:class reduce . 
    358) ($:model reduce . 358) ($:operator reduce . 358) ($:record reduce . 
    358) ($:block reduce . 358) ($:expandable reduce . 358) ($:connector 
    reduce . 358) ($:type reduce . 358) ($:package reduce . 358) ($:impure 
    reduce . 358) ($:pure reduce . 358) ($:function reduce . 358) ($:extends 
    reduce . 358) ($:import reduce . 358) ($:+ reduce . 358) ($:= reduce . 358
    ) ($:: reduce . 358) ($:^ reduce . 358) ($:.^ reduce . 358) ($:./ reduce 
    . 358) ($:.* reduce . 358) ($:/ reduce . 358) ($:* reduce . 358) ($:- 
    reduce . 358) ($:.+ reduce . 358) ($:.- reduce . 358) ($:<> reduce . 358) 
    ($:== reduce . 358) ($:>= reduce . 358) ($:> reduce . 358) ($:<= reduce . 
    358) ($:< reduce . 358) ($:and reduce . 358) ($:or reduce . 358) (#{$:;}# 
    reduce . 358) ($:annotation reduce . 358) (#{$:\x5d;}# reduce . 358) 
    ($:, reduce . 358) (#{$:\x7d;}# reduce . 358) (#{$:\x29;}# reduce . 358) 
    ($:then reduce . 358) ($:loop reduce . 358) ($:else reduce . 358) (
    $:elseif reduce . 358) ($:constrainedby reduce . 358) ($string reduce . 
    358) ($:end reduce . 358) ($:elsewhen reduce . 358) ($:if reduce . 358)) 
    (($:import reduce . 350) ($:extends reduce . 350) ($:function reduce . 350
    ) ($:pure reduce . 350) ($:impure reduce . 350) ($:package reduce . 350) 
    ($:type reduce . 350) ($:connector reduce . 350) ($:expandable reduce . 
    350) ($:block reduce . 350) ($:record reduce . 350) ($:operator reduce . 
    350) ($:model reduce . 350) ($:class reduce . 350) ($:partial reduce . 350
    ) ($:encapsulated reduce . 350) ($:stream reduce . 350) ($:flow reduce . 
    350) ($:constant reduce . 350) ($:parameter reduce . 350) ($:discrete 
    reduce . 350) ($:output reduce . 350) ($:input reduce . 350) ($ident 
    reduce . 350) ($:. reduce . 350) ($:replaceable reduce . 350) ($:outer 
    reduce . 350) ($:inner reduce . 350) ($:final reduce . 350) ($:redeclare 
    reduce . 350) ($:+ reduce . 350) ($:annotation reduce . 350) (#{$:;}# 
    reduce . 350) ($:, reduce . 350) ($:constrainedby reduce . 350) (
    #{$:\x29;}# reduce . 350)) (($:+ shift . 104) ($:redeclare reduce . 349) 
    ($:final reduce . 349) ($:inner reduce . 349) ($:outer reduce . 349) 
    ($:replaceable reduce . 349) ($:. reduce . 349) ($ident reduce . 349) 
    ($:input reduce . 349) ($:output reduce . 349) ($:discrete reduce . 349) 
    ($:parameter reduce . 349) ($:constant reduce . 349) ($:flow reduce . 349)
    ($:stream reduce . 349) ($:encapsulated reduce . 349) ($:partial reduce . 
    349) ($:class reduce . 349) ($:model reduce . 349) ($:operator reduce . 
    349) ($:record reduce . 349) ($:block reduce . 349) ($:expandable reduce 
    . 349) ($:connector reduce . 349) ($:type reduce . 349) ($:package reduce 
    . 349) ($:impure reduce . 349) ($:pure reduce . 349) ($:function reduce . 
    349) ($:extends reduce . 349) ($:import reduce . 349) ($:annotation reduce
    . 349) (#{$:;}# reduce . 349) ($:, reduce . 349) ($:constrainedby reduce 
    . 349) (#{$:\x29;}# reduce . 349)) (($:import reduce . 348) ($:extends 
    reduce . 348) ($:function reduce . 348) ($:pure reduce . 348) ($:impure 
    reduce . 348) ($:package reduce . 348) ($:type reduce . 348) ($:connector 
    reduce . 348) ($:expandable reduce . 348) ($:block reduce . 348) ($:record
    reduce . 348) ($:operator reduce . 348) ($:model reduce . 348) ($:class 
    reduce . 348) ($:partial reduce . 348) ($:encapsulated reduce . 348) 
    ($:stream reduce . 348) ($:flow reduce . 348) ($:constant reduce . 348) 
    ($:parameter reduce . 348) ($:discrete reduce . 348) ($:output reduce . 
    348) ($:input reduce . 348) ($ident reduce . 348) ($:. reduce . 348) 
    ($:replaceable reduce . 348) ($:outer reduce . 348) ($:inner reduce . 348)
    ($:final reduce . 348) ($:redeclare reduce . 348) ($:annotation reduce . 
    348) (#{$:;}# reduce . 348) ($:, reduce . 348) ($:constrainedby reduce . 
    348) (#{$:\x29;}# reduce . 348)) (($ident shift . 26) ($:. shift . 27) 
    (ident shift . 28) ($:output shift . 74) ($:input shift . 75) ($:constant 
    shift . 76) ($:parameter shift . 77) ($:discrete shift . 78) ($:stream 
    shift . 79) ($:flow shift . 80) ($:function shift . 1) ($:pure shift . 2) 
    ($:impure shift . 3) ($:package shift . 4) ($:type shift . 5) ($:connector
    shift . 6) ($:expandable shift . 7) ($:block shift . 8) ($:record shift . 
    9) ($:operator shift . 10) ($:model shift . 11) ($:class shift . 12) 
    (name shift . 81) (type-prefix-3 shift . 82) (type-prefix-2 shift . 83) 
    (type-prefix-1 shift . 84) (class-prefixes-1 shift . 13) ($:partial shift 
    . 14) (type-specifier shift . 85) (type-prefix shift . 86) (class-prefixes
    shift . 15) ($:encapsulated shift . 16) (component-clause shift . 87) 
    (class-definition shift . 88) ($:extends shift . 89) ($:import shift . 90)
    ($:replaceable shift . 91) (element-2 shift . 92) (element-1 shift . 93) 
    ($:outer shift . 94) ($:inner shift . 95) ($:final shift . 96) (
    $:redeclare shift . 97) (extends-clause shift . 98) (import-clause shift 
    . 99) (element shift . 100) (element-list-1 shift . 101) (element-list 
    shift . 102) (composition shift . 103)) (($:der shift . 69) ($:enumeration
    shift . 70) ($:output shift . 71) ($:input shift . 72) (base-prefix shift 
    . 73) ($ident reduce . 43) ($:. reduce . 43)) (($string shift . 50) 
    (string shift . 51) (string-cat-1 shift . 52) (string-cat shift . 53) 
    (string-comment shift . 66) (#{$:\x28;}# shift . 67) (class-modification 
    shift . 68) ($:import reduce . 347) ($:extends reduce . 347) ($:function 
    reduce . 347) ($:pure reduce . 347) ($:impure reduce . 347) ($:package 
    reduce . 347) ($:type reduce . 347) ($:connector reduce . 347) (
    $:expandable reduce . 347) ($:block reduce . 347) ($:record reduce . 347) 
    ($:operator reduce . 347) ($:model reduce . 347) ($:class reduce . 347) 
    ($:partial reduce . 347) ($:encapsulated reduce . 347) ($:stream reduce . 
    347) ($:flow reduce . 347) ($:constant reduce . 347) ($:parameter reduce 
    . 347) ($:discrete reduce . 347) ($:output reduce . 347) ($:input reduce 
    . 347) ($ident reduce . 347) ($:. reduce . 347) ($:replaceable reduce . 
    347) ($:outer reduce . 347) ($:inner reduce . 347) ($:final reduce . 347) 
    ($:redeclare reduce . 347)) ((#{$:;}# reduce . 10) ($:constrainedby reduce
    . 10)) (($:function reduce . 6) ($:pure reduce . 6) ($:impure reduce . 6) 
    ($:package reduce . 6) ($:type reduce . 6) ($:connector reduce . 6) 
    ($:expandable reduce . 6) ($:block reduce . 6) ($:record reduce . 6) 
    ($:operator reduce . 6) ($:model reduce . 6) ($:class reduce . 6) (
    $:partial reduce . 6) ($:encapsulated reduce . 6) ($:final reduce . 6) 
    ($end reduce . 6)) (($:function reduce . 4) ($:pure reduce . 4) ($:impure 
    reduce . 4) ($:package reduce . 4) ($:type reduce . 4) ($:connector reduce
    . 4) ($:expandable reduce . 4) ($:block reduce . 4) ($:record reduce . 4) 
    ($:operator reduce . 4) ($:model reduce . 4) ($:class reduce . 4) (
    $:partial reduce . 4) ($:encapsulated reduce . 4) ($:final reduce . 4)) 
    (($ident shift . 26) (ident shift . 65)) ((#{$:;}# reduce . 312) ($:. 
    reduce . 312) (#{$:\x5b;}# reduce . 312) ($ident reduce . 312) (
    #{$:\x29;}# reduce . 312) ($string reduce . 312) (#{$:\x28;}# reduce . 312
    ) ($::= reduce . 312) ($:= reduce . 312) ($:, reduce . 312) ($:annotation 
    reduce . 312) ($:: reduce . 312) ($:^ reduce . 312) ($:.^ reduce . 312) 
    ($:./ reduce . 312) ($:.* reduce . 312) ($:/ reduce . 312) ($:* reduce . 
    312) ($:+ reduce . 312) ($:- reduce . 312) ($:.+ reduce . 312) ($:.- 
    reduce . 312) ($:<> reduce . 312) ($:== reduce . 312) ($:>= reduce . 312) 
    ($:> reduce . 312) ($:<= reduce . 312) ($:< reduce . 312) ($:and reduce . 
    312) ($:or reduce . 312) (#{$:\x5d;}# reduce . 312) (#{$:\x7d;}# reduce . 
    312) ($:then reduce . 312) ($:loop reduce . 312) ($:else reduce . 312) 
    ($:elseif reduce . 312) ($:constrainedby reduce . 312) ($:end reduce . 312
    ) ($:elsewhen reduce . 312) ($:stream reduce . 312) ($:flow reduce . 312) 
    ($:constant reduce . 312) ($:parameter reduce . 312) ($:discrete reduce . 
    312) ($:output reduce . 312) ($:input reduce . 312) ($:if reduce . 312)) 
    (($:function reduce . 9) ($:pure reduce . 9) ($:impure reduce . 9) 
    ($:package reduce . 9) ($:type reduce . 9) ($:connector reduce . 9) 
    ($:expandable reduce . 9) ($:block reduce . 9) ($:record reduce . 9) 
    ($:operator reduce . 9) ($:model reduce . 9) ($:class reduce . 9) (
    $:partial reduce . 9) ($:encapsulated reduce . 9) ($:final reduce . 9) 
    ($end reduce . 9)) ((#{$:;}# shift . 64)) (($:function reduce . 8) 
    ($:pure reduce . 8) ($:impure reduce . 8) ($:package reduce . 8) ($:type 
    reduce . 8) ($:connector reduce . 8) ($:expandable reduce . 8) ($:block 
    reduce . 8) ($:record reduce . 8) ($:operator reduce . 8) ($:model reduce 
    . 8) ($:class reduce . 8) ($:partial reduce . 8) ($:encapsulated reduce . 
    8) ($:final reduce . 8) ($end reduce . 8)) ((#{$:;}# reduce . 313) 
    ($:. reduce . 313) ($:annotation reduce . 313) ($string reduce . 313) 
    (#{$:\x5b;}# reduce . 313) ($ident reduce . 313) (#{$:\x28;}# reduce . 313
    ) ($:, reduce . 313) ($:constrainedby reduce . 313) (#{$:\x29;}# reduce . 
    313) ($::= reduce . 313) ($:= reduce . 313) (#{$:\x5d;}# reduce . 313) 
    ($:: reduce . 313) ($:^ reduce . 313) ($:.^ reduce . 313) ($:./ reduce . 
    313) ($:.* reduce . 313) ($:/ reduce . 313) ($:* reduce . 313) ($:+ reduce
    . 313) ($:- reduce . 313) ($:.+ reduce . 313) ($:.- reduce . 313) ($:<> 
    reduce . 313) ($:== reduce . 313) ($:>= reduce . 313) ($:> reduce . 313) 
    ($:<= reduce . 313) ($:< reduce . 313) ($:and reduce . 313) ($:or reduce 
    . 313) (#{$:\x7d;}# reduce . 313) ($:then reduce . 313) ($:loop reduce . 
    313) ($:else reduce . 313) ($:elseif reduce . 313) ($:stream reduce . 313)
    ($:flow reduce . 313) ($:constant reduce . 313) ($:parameter reduce . 313)
    ($:discrete reduce . 313) ($:output reduce . 313) ($:input reduce . 313) 
    ($:end reduce . 313) ($:elsewhen reduce . 313) ($:if reduce . 313)) 
    (($ident shift . 26) ($:. shift . 27) (ident shift . 28) ($:output shift 
    . 74) ($:input shift . 75) ($:constant shift . 76) ($:parameter shift . 77
    ) ($:discrete shift . 78) ($:stream shift . 79) ($:flow shift . 80) 
    ($:function shift . 1) ($:pure shift . 2) ($:impure shift . 3) ($:package 
    shift . 4) ($:type shift . 5) ($:connector shift . 6) ($:expandable shift 
    . 7) ($:block shift . 8) ($:record shift . 9) ($:operator shift . 10) 
    ($:model shift . 11) ($:class shift . 12) (name shift . 81) (type-prefix-3
    shift . 82) (type-prefix-2 shift . 83) (type-prefix-1 shift . 84) (
    class-prefixes-1 shift . 13) ($:partial shift . 14) (type-specifier shift 
    . 85) (type-prefix shift . 86) (class-prefixes shift . 15) ($:encapsulated
    shift . 16) (component-clause shift . 87) (class-definition shift . 88) 
    ($:extends shift . 89) ($:import shift . 90) ($:replaceable shift . 91) 
    (element-2 shift . 92) (element-1 shift . 93) ($:outer shift . 94) 
    ($:inner shift . 95) ($:final shift . 96) ($:redeclare shift . 97) 
    (extends-clause shift . 98) (import-clause shift . 99) (element shift . 
    100) (element-list-1 shift . 101) (element-list shift . 102) (composition 
    shift . 165)) (($ident shift . 26) ($:. shift . 27) (ident shift . 28) 
    ($:replaceable shift . 151) (name shift . 152) (element-replaceable shift 
    . 153) (element-modification shift . 154) ($:redeclare shift . 155) 
    (elt-mod-or-repl-1 shift . 156) ($:final shift . 157) ($:each shift . 158)
    (element-redeclaration shift . 159) (element-modification-or-replaceable 
    shift . 160) (argument shift . 161) (arg-list-1 shift . 162) (
    argument-list shift . 163) (#{$:\x29;}# shift . 164)) (($string shift . 50
    ) (string shift . 51) (string-cat-1 shift . 52) (string-cat shift . 53) 
    (string-comment shift . 150) ($:import reduce . 347) ($:extends reduce . 
    347) ($:function reduce . 347) ($:pure reduce . 347) ($:impure reduce . 
    347) ($:package reduce . 347) ($:type reduce . 347) ($:connector reduce . 
    347) ($:expandable reduce . 347) ($:block reduce . 347) ($:record reduce 
    . 347) ($:operator reduce . 347) ($:model reduce . 347) ($:class reduce . 
    347) ($:partial reduce . 347) ($:encapsulated reduce . 347) ($:stream 
    reduce . 347) ($:flow reduce . 347) ($:constant reduce . 347) ($:parameter
    reduce . 347) ($:discrete reduce . 347) ($:output reduce . 347) ($:input 
    reduce . 347) ($ident reduce . 347) ($:. reduce . 347) ($:replaceable 
    reduce . 347) ($:outer reduce . 347) ($:inner reduce . 347) ($:final 
    reduce . 347) ($:redeclare reduce . 347)) ((#{$:\x28;}# shift . 149)) 
    ((#{$:\x28;}# shift . 148)) (($ident reduce . 45) ($:. reduce . 45)) 
    (($ident reduce . 44) ($:. reduce . 44)) (($ident shift . 26) ($:. shift 
    . 27) (ident shift . 28) (name shift . 81) (type-specifier shift . 147)) 
    (($:. reduce . 138) ($ident reduce . 138)) (($:. reduce . 137) ($ident 
    reduce . 137)) (($:. reduce . 136) ($ident reduce . 136) ($:output reduce 
    . 136) ($:input reduce . 136)) (($:. reduce . 135) ($ident reduce . 135) 
    ($:output reduce . 135) ($:input reduce . 135)) (($:. reduce . 134) 
    ($ident reduce . 134) ($:output reduce . 134) ($:input reduce . 134)) 
    (($:. reduce . 133) ($ident reduce . 133) ($:output reduce . 133) ($:input
    reduce . 133) ($:constant reduce . 133) ($:parameter reduce . 133) 
    ($:discrete reduce . 133)) (($:. reduce . 132) ($ident reduce . 132) 
    ($:output reduce . 132) ($:input reduce . 132) ($:constant reduce . 132) 
    ($:parameter reduce . 132) ($:discrete reduce . 132)) (($:. shift . 60) 
    ($ident reduce . 139) (#{$:\x5b;}# reduce . 139) ($string reduce . 139) 
    ($:annotation reduce . 139) (#{$:\x28;}# reduce . 139) ($:, reduce . 139) 
    (#{$:;}# reduce . 139) ($:constrainedby reduce . 139) ($:stream reduce . 
    139) ($:flow reduce . 139) ($:constant reduce . 139) ($:parameter reduce 
    . 139) ($:discrete reduce . 139) ($:output reduce . 139) ($:input reduce 
    . 139) (#{$:\x29;}# reduce . 139)) (($ident reduce . 131) ($:. reduce . 
    131)) (($:output shift . 74) ($:input shift . 75) (type-prefix-3 shift . 
    146) ($ident reduce . 130) ($:. reduce . 130)) (($:constant shift . 76) 
    ($:parameter shift . 77) ($:discrete shift . 78) (type-prefix-2 shift . 
    144) ($:output shift . 74) ($:input shift . 75) (type-prefix-3 shift . 145
    ) ($ident reduce . 129) ($:. reduce . 129)) ((#{$:\x5b;}# shift . 137) 
    (array-subscripts shift . 138) ($ident shift . 26) (ident shift . 139) 
    (declaration shift . 140) (component-declaration shift . 141) (
    component-list-1 shift . 142) (component-list shift . 143)) (($ident shift
    . 26) ($:. shift . 27) (ident shift . 28) (name shift . 81) (
    type-specifier shift . 136)) ((#{$:;}# reduce . 105) ($:constrainedby 
    reduce . 105)) ((#{$:;}# reduce . 104) ($:constrainedby reduce . 104)) 
    (($ident shift . 26) ($:. shift . 27) (ident shift . 28) (name shift . 135
    )) (($ident shift . 26) ($:. shift . 27) (name shift . 132) (ident shift 
    . 133) (import-clause-1 shift . 134)) (($ident shift . 26) ($:. shift . 27
    ) (ident shift . 28) ($:output shift . 74) ($:input shift . 75) (
    $:constant shift . 76) ($:parameter shift . 77) ($:discrete shift . 78) 
    ($:stream shift . 79) ($:flow shift . 80) ($:function shift . 1) ($:pure 
    shift . 2) ($:impure shift . 3) ($:package shift . 4) ($:type shift . 5) 
    ($:connector shift . 6) ($:expandable shift . 7) ($:block shift . 8) 
    ($:record shift . 9) ($:operator shift . 10) ($:model shift . 11) ($:class
    shift . 12) (name shift . 81) (type-prefix-3 shift . 82) (type-prefix-2 
    shift . 83) (type-prefix-1 shift . 84) (class-prefixes-1 shift . 13) 
    ($:partial shift . 14) (type-specifier shift . 85) (type-prefix shift . 86
    ) (class-prefixes shift . 15) ($:encapsulated shift . 16) (
    component-clause shift . 87) (class-definition shift . 88) (element-2 
    shift . 131)) ((#{$:;}# reduce . 101)) ((#{$:;}# reduce . 88)) (($ident 
    shift . 26) ($:. shift . 27) (ident shift . 28) ($:output shift . 74) 
    ($:input shift . 75) ($:constant shift . 76) ($:parameter shift . 77) 
    ($:discrete shift . 78) ($:stream shift . 79) ($:flow shift . 80) (
    $:function shift . 1) ($:pure shift . 2) ($:impure shift . 3) ($:package 
    shift . 4) ($:type shift . 5) ($:connector shift . 6) ($:expandable shift 
    . 7) ($:block shift . 8) ($:record shift . 9) ($:operator shift . 10) 
    ($:model shift . 11) ($:class shift . 12) (name shift . 81) (type-prefix-3
    shift . 82) (type-prefix-2 shift . 83) (type-prefix-1 shift . 84) (
    class-prefixes-1 shift . 13) ($:partial shift . 14) (type-specifier shift 
    . 85) (type-prefix shift . 86) (class-prefixes shift . 15) ($:encapsulated
    shift . 16) (component-clause shift . 87) (class-definition shift . 88) 
    ($:replaceable shift . 91) (element-2 shift . 92) (element-1 shift . 130))
    (($:outer shift . 128) ($P6 shift . 129) ($:function reduce . 99) ($:pure 
    reduce . 99) ($:impure reduce . 99) ($:package reduce . 99) ($:type reduce
    . 99) ($:connector reduce . 99) ($:expandable reduce . 99) ($:block reduce
    . 99) ($:record reduce . 99) ($:operator reduce . 99) ($:model reduce . 99
    ) ($:class reduce . 99) ($:partial reduce . 99) ($:encapsulated reduce . 
    99) ($:stream reduce . 99) ($:flow reduce . 99) ($:constant reduce . 99) 
    ($:parameter reduce . 99) ($:discrete reduce . 99) ($:output reduce . 99) 
    ($:input reduce . 99) ($ident reduce . 99) ($:. reduce . 99) (
    $:replaceable reduce . 99)) (($:inner shift . 126) ($P4 shift . 127) 
    ($:function reduce . 95) ($:pure reduce . 95) ($:impure reduce . 95) 
    ($:package reduce . 95) ($:type reduce . 95) ($:connector reduce . 95) 
    ($:expandable reduce . 95) ($:block reduce . 95) ($:record reduce . 95) 
    ($:operator reduce . 95) ($:model reduce . 95) ($:class reduce . 95) 
    ($:partial reduce . 95) ($:encapsulated reduce . 95) ($:stream reduce . 95
    ) ($:flow reduce . 95) ($:constant reduce . 95) ($:parameter reduce . 95) 
    ($:discrete reduce . 95) ($:output reduce . 95) ($:input reduce . 95) 
    ($ident reduce . 95) ($:. reduce . 95) ($:replaceable reduce . 95) 
    ($:outer reduce . 95)) (($:final shift . 124) ($P1 shift . 125) (
    $:function reduce . 89) ($:pure reduce . 89) ($:impure reduce . 89) 
    ($:package reduce . 89) ($:type reduce . 89) ($:connector reduce . 89) 
    ($:expandable reduce . 89) ($:block reduce . 89) ($:record reduce . 89) 
    ($:operator reduce . 89) ($:model reduce . 89) ($:class reduce . 89) 
    ($:partial reduce . 89) ($:encapsulated reduce . 89) ($:stream reduce . 89
    ) ($:flow reduce . 89) ($:constant reduce . 89) ($:parameter reduce . 89) 
    ($:discrete reduce . 89) ($:output reduce . 89) ($:input reduce . 89) 
    ($ident reduce . 89) ($:. reduce . 89) ($:replaceable reduce . 89) 
    ($:outer reduce . 89) ($:inner reduce . 89)) ((#{$:;}# reduce . 83)) 
    ((#{$:;}# reduce . 82)) ((#{$:;}# shift . 123)) (($ident shift . 26) 
    ($:. shift . 27) (ident shift . 28) ($:output shift . 74) ($:input shift 
    . 75) ($:constant shift . 76) ($:parameter shift . 77) ($:discrete shift 
    . 78) ($:stream shift . 79) ($:flow shift . 80) ($:function shift . 1) 
    ($:pure shift . 2) ($:impure shift . 3) ($:package shift . 4) ($:type 
    shift . 5) ($:connector shift . 6) ($:expandable shift . 7) ($:block shift
    . 8) ($:record shift . 9) ($:operator shift . 10) ($:model shift . 11) 
    ($:class shift . 12) (name shift . 81) (type-prefix-3 shift . 82) (
    type-prefix-2 shift . 83) (type-prefix-1 shift . 84) (class-prefixes-1 
    shift . 13) ($:partial shift . 14) (type-specifier shift . 85) (
    type-prefix shift . 86) (class-prefixes shift . 15) ($:encapsulated shift 
    . 16) (component-clause shift . 87) (class-definition shift . 88) (
    $:extends shift . 89) ($:import shift . 90) ($:replaceable shift . 91) 
    (element-2 shift . 92) (element-1 shift . 93) ($:outer shift . 94) 
    ($:inner shift . 95) ($:final shift . 96) ($:redeclare shift . 97) 
    (extends-clause shift . 98) (import-clause shift . 99) (element shift . 
    122) ($:end reduce . 79) ($:annotation reduce . 79) ($:external reduce . 
    79) ($:equation reduce . 79) ($:algorithm reduce . 79) ($:initial reduce 
    . 79) ($:protected reduce . 79) ($:public reduce . 79)) (($:algorithm 
    shift . 107) ($:equation shift . 108) ($:initial shift . 109) (
    algorithm-section shift . 110) (equation-section shift . 111) ($:protected
    shift . 112) ($:public shift . 113) (composition-1 shift . 114) (
    composition-1-list-1 shift . 115) (composition-1-list shift . 116) 
    ($:external shift . 117) (external-part shift . 118) ($:annotation shift 
    . 119) (annotation shift . 120) (opt-annotation shift . 121) ($:end reduce
    . 352)) (($:end shift . 106)) (($string shift . 50) (string shift . 105)) 
    (($:import reduce . 351) ($:extends reduce . 351) ($:function reduce . 351
    ) ($:pure reduce . 351) ($:impure reduce . 351) ($:package reduce . 351) 
    ($:type reduce . 351) ($:connector reduce . 351) ($:expandable reduce . 
    351) ($:block reduce . 351) ($:record reduce . 351) ($:operator reduce . 
    351) ($:model reduce . 351) ($:class reduce . 351) ($:partial reduce . 351
    ) ($:encapsulated reduce . 351) ($:stream reduce . 351) ($:flow reduce . 
    351) ($:constant reduce . 351) ($:parameter reduce . 351) ($:discrete 
    reduce . 351) ($:output reduce . 351) ($:input reduce . 351) ($ident 
    reduce . 351) ($:. reduce . 351) ($:replaceable reduce . 351) ($:outer 
    reduce . 351) ($:inner reduce . 351) ($:final reduce . 351) ($:redeclare 
    reduce . 351) ($:+ reduce . 351) ($:annotation reduce . 351) (#{$:;}# 
    reduce . 351) ($:, reduce . 351) ($:constrainedby reduce . 351) (
    #{$:\x29;}# reduce . 351)) (($ident shift . 26) (ident shift . 292)) 
    (($ident shift . 26) (ident shift . 276) ($:. shift . 247) (
    component-reference-2 shift . 248) (component-reference-1 shift . 249) 
    ($:when shift . 277) ($:while shift . 278) ($:for shift . 279) ($:if shift
    . 280) (when-statement shift . 281) (while-statement shift . 282) (
    for-statement shift . 283) (if-statement shift . 284) ($:return shift . 
    285) ($:break shift . 286) (#{$:\x28;}# shift . 287) (component-reference 
    shift . 288) (statement-1 shift . 289) (statement shift . 290) (
    statement-list shift . 291) ($:annotation reduce . 190) ($:public reduce 
    . 190) ($:protected reduce . 190) ($:initial reduce . 190) ($:algorithm 
    reduce . 190) ($:equation reduce . 190) ($:external reduce . 190) ($:end 
    reduce . 190)) (($string shift . 50) ($float shift . 198) ($fixed shift . 
    199) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# 
    shift . 202) ($:der shift . 203) ($:true shift . 205) ($:false shift . 206
    ) (string shift . 207) (unsigned-number shift . 208) ($:- shift . 209) 
    ($:+ shift . 210) (primary shift . 211) (unary-expr shift . 212) (factor 
    shift . 213) (term shift . 214) (arithmetic-expression shift . 215) 
    ($:not shift . 216) (relation shift . 217) (logical-factor shift . 218) 
    ($ident shift . 26) (logical-term shift . 219) ($:. shift . 27) (ident 
    shift . 28) (logical-expression shift . 220) ($:connect shift . 262) 
    ($:when shift . 263) ($:for shift . 264) ($:if shift . 265) (name shift . 
    266) (when-equation shift . 267) (connect-clause shift . 268) (
    for-equation shift . 269) (if-equation shift . 270) (simple-expression 
    shift . 271) (equation-1 shift . 272) (equation shift . 273) (
    equation-list-1 shift . 274) (equation-list shift . 275) ($:annotation 
    reduce . 186) ($:public reduce . 186) ($:protected reduce . 186) (
    $:initial reduce . 186) ($:algorithm reduce . 186) ($:equation reduce . 
    186) ($:external reduce . 186) ($:end reduce . 186)) (($:equation shift . 
    260) ($:algorithm shift . 261)) (($:annotation reduce . 65) ($:equation 
    reduce . 65) ($:algorithm reduce . 65) ($:initial reduce . 65) (
    $:protected reduce . 65) ($:public reduce . 65) ($:external reduce . 65) 
    ($:end reduce . 65)) (($:annotation reduce . 64) ($:equation reduce . 64) 
    ($:algorithm reduce . 64) ($:initial reduce . 64) ($:protected reduce . 64
    ) ($:public reduce . 64) ($:external reduce . 64) ($:end reduce . 64)) 
    (($ident shift . 26) ($:. shift . 27) (ident shift . 28) ($:output shift 
    . 74) ($:input shift . 75) ($:constant shift . 76) ($:parameter shift . 77
    ) ($:discrete shift . 78) ($:stream shift . 79) ($:flow shift . 80) 
    ($:function shift . 1) ($:pure shift . 2) ($:impure shift . 3) ($:package 
    shift . 4) ($:type shift . 5) ($:connector shift . 6) ($:expandable shift 
    . 7) ($:block shift . 8) ($:record shift . 9) ($:operator shift . 10) 
    ($:model shift . 11) ($:class shift . 12) (name shift . 81) (type-prefix-3
    shift . 82) (type-prefix-2 shift . 83) (type-prefix-1 shift . 84) (
    class-prefixes-1 shift . 13) ($:partial shift . 14) (type-specifier shift 
    . 85) (type-prefix shift . 86) (class-prefixes shift . 15) ($:encapsulated
    shift . 16) (component-clause shift . 87) (class-definition shift . 88) 
    ($:extends shift . 89) ($:import shift . 90) ($:replaceable shift . 91) 
    (element-2 shift . 92) (element-1 shift . 93) ($:outer shift . 94) 
    ($:inner shift . 95) ($:final shift . 96) ($:redeclare shift . 97) 
    (extends-clause shift . 98) (import-clause shift . 99) (element shift . 
    100) (element-list-1 shift . 101) (element-list shift . 259) ($:annotation
    reduce . 62) ($:equation reduce . 62) ($:algorithm reduce . 62) ($:initial
    reduce . 62) ($:protected reduce . 62) ($:public reduce . 62) ($:external 
    reduce . 62) ($:end reduce . 62)) (($ident shift . 26) ($:. shift . 27) 
    (ident shift . 28) ($:output shift . 74) ($:input shift . 75) ($:constant 
    shift . 76) ($:parameter shift . 77) ($:discrete shift . 78) ($:stream 
    shift . 79) ($:flow shift . 80) ($:function shift . 1) ($:pure shift . 2) 
    ($:impure shift . 3) ($:package shift . 4) ($:type shift . 5) ($:connector
    shift . 6) ($:expandable shift . 7) ($:block shift . 8) ($:record shift . 
    9) ($:operator shift . 10) ($:model shift . 11) ($:class shift . 12) 
    (name shift . 81) (type-prefix-3 shift . 82) (type-prefix-2 shift . 83) 
    (type-prefix-1 shift . 84) (class-prefixes-1 shift . 13) ($:partial shift 
    . 14) (type-specifier shift . 85) (type-prefix shift . 86) (class-prefixes
    shift . 15) ($:encapsulated shift . 16) (component-clause shift . 87) 
    (class-definition shift . 88) ($:extends shift . 89) ($:import shift . 90)
    ($:replaceable shift . 91) (element-2 shift . 92) (element-1 shift . 93) 
    ($:outer shift . 94) ($:inner shift . 95) ($:final shift . 96) (
    $:redeclare shift . 97) (extends-clause shift . 98) (import-clause shift 
    . 99) (element shift . 100) (element-list-1 shift . 101) (element-list 
    shift . 258) ($:annotation reduce . 60) ($:equation reduce . 60) (
    $:algorithm reduce . 60) ($:initial reduce . 60) ($:protected reduce . 60)
    ($:public reduce . 60) ($:external reduce . 60) ($:end reduce . 60)) 
    (($:annotation reduce . 58) ($:public reduce . 58) ($:protected reduce . 
    58) ($:initial reduce . 58) ($:algorithm reduce . 58) ($:equation reduce 
    . 58) ($:external reduce . 58) ($:end reduce . 58)) (($:annotation reduce 
    . 57) ($:equation reduce . 57) ($:algorithm reduce . 57) ($:initial reduce
    . 57) ($:protected reduce . 57) ($:public reduce . 57) ($:external reduce 
    . 57) ($:end reduce . 57)) (($:annotation shift . 119) (annotation shift 
    . 120) (opt-annotation shift . 255) ($:algorithm shift . 107) ($:equation 
    shift . 108) ($:initial shift . 109) (algorithm-section shift . 110) 
    (equation-section shift . 111) ($:protected shift . 112) ($:public shift 
    . 113) (composition-1 shift . 256) ($:external shift . 117) (external-part
    shift . 257) ($:end reduce . 352)) (($string shift . 50) (string shift . 
    245) (language-specification shift . 246) ($:. shift . 247) (
    component-reference-2 shift . 248) ($ident shift . 26) (
    component-reference-1 shift . 249) (ident shift . 250) (
    component-reference shift . 251) (external-function-call shift . 252) 
    ($:annotation shift . 119) (annotation shift . 253) (#{$:;}# shift . 254))
    (($:annotation shift . 119) (annotation shift . 120) (opt-annotation shift
    . 244) ($:end reduce . 352)) ((#{$:\x28;}# shift . 67) (class-modification
    shift . 243)) ((#{$:;}# shift . 242)) (($:end reduce . 56)) ((#{$:;}# 
    shift . 241)) (($:public reduce . 80) ($:protected reduce . 80) ($:initial
    reduce . 80) ($:algorithm reduce . 80) ($:equation reduce . 80) (
    $:external reduce . 80) ($:annotation reduce . 80) ($:end reduce . 80) 
    ($:import reduce . 80) ($:extends reduce . 80) ($:function reduce . 80) 
    ($:pure reduce . 80) ($:impure reduce . 80) ($:package reduce . 80) 
    ($:type reduce . 80) ($:connector reduce . 80) ($:expandable reduce . 80) 
    ($:block reduce . 80) ($:record reduce . 80) ($:operator reduce . 80) 
    ($:model reduce . 80) ($:class reduce . 80) ($:partial reduce . 80) 
    ($:encapsulated reduce . 80) ($:stream reduce . 80) ($:flow reduce . 80) 
    ($:constant reduce . 80) ($:parameter reduce . 80) ($:discrete reduce . 80
    ) ($:output reduce . 80) ($:input reduce . 80) ($ident reduce . 80) 
    ($:. reduce . 80) ($:replaceable reduce . 80) ($:outer reduce . 80) 
    ($:inner reduce . 80) ($:final reduce . 80) ($:redeclare reduce . 80)) 
    (($:function reduce . 90) ($:pure reduce . 90) ($:impure reduce . 90) 
    ($:package reduce . 90) ($:type reduce . 90) ($:connector reduce . 90) 
    ($:expandable reduce . 90) ($:block reduce . 90) ($:record reduce . 90) 
    ($:operator reduce . 90) ($:model reduce . 90) ($:class reduce . 90) 
    ($:partial reduce . 90) ($:encapsulated reduce . 90) ($:stream reduce . 90
    ) ($:flow reduce . 90) ($:constant reduce . 90) ($:parameter reduce . 90) 
    ($:discrete reduce . 90) ($:output reduce . 90) ($:input reduce . 90) 
    ($ident reduce . 90) ($:. reduce . 90) ($:replaceable reduce . 90) 
    ($:outer reduce . 90) ($:inner reduce . 90)) (($:inner shift . 239) 
    ($P2 shift . 240) ($:function reduce . 91) ($:pure reduce . 91) ($:impure 
    reduce . 91) ($:package reduce . 91) ($:type reduce . 91) ($:connector 
    reduce . 91) ($:expandable reduce . 91) ($:block reduce . 91) ($:record 
    reduce . 91) ($:operator reduce . 91) ($:model reduce . 91) ($:class 
    reduce . 91) ($:partial reduce . 91) ($:encapsulated reduce . 91) (
    $:stream reduce . 91) ($:flow reduce . 91) ($:constant reduce . 91) 
    ($:parameter reduce . 91) ($:discrete reduce . 91) ($:output reduce . 91) 
    ($:input reduce . 91) ($ident reduce . 91) ($:. reduce . 91) (
    $:replaceable reduce . 91) ($:outer reduce . 91)) (($:function reduce . 96
    ) ($:pure reduce . 96) ($:impure reduce . 96) ($:package reduce . 96) 
    ($:type reduce . 96) ($:connector reduce . 96) ($:expandable reduce . 96) 
    ($:block reduce . 96) ($:record reduce . 96) ($:operator reduce . 96) 
    ($:model reduce . 96) ($:class reduce . 96) ($:partial reduce . 96) 
    ($:encapsulated reduce . 96) ($:stream reduce . 96) ($:flow reduce . 96) 
    ($:constant reduce . 96) ($:parameter reduce . 96) ($:discrete reduce . 96
    ) ($:output reduce . 96) ($:input reduce . 96) ($ident reduce . 96) 
    ($:. reduce . 96) ($:replaceable reduce . 96) ($:outer reduce . 96)) 
    (($:outer shift . 237) ($P5 shift . 238) ($:function reduce . 97) ($:pure 
    reduce . 97) ($:impure reduce . 97) ($:package reduce . 97) ($:type reduce
    . 97) ($:connector reduce . 97) ($:expandable reduce . 97) ($:block reduce
    . 97) ($:record reduce . 97) ($:operator reduce . 97) ($:model reduce . 97
    ) ($:class reduce . 97) ($:partial reduce . 97) ($:encapsulated reduce . 
    97) ($:stream reduce . 97) ($:flow reduce . 97) ($:constant reduce . 97) 
    ($:parameter reduce . 97) ($:discrete reduce . 97) ($:output reduce . 97) 
    ($:input reduce . 97) ($ident reduce . 97) ($:. reduce . 97) (
    $:replaceable reduce . 97)) (($:function reduce . 100) ($:pure reduce . 
    100) ($:impure reduce . 100) ($:package reduce . 100) ($:type reduce . 100
    ) ($:connector reduce . 100) ($:expandable reduce . 100) ($:block reduce 
    . 100) ($:record reduce . 100) ($:operator reduce . 100) ($:model reduce 
    . 100) ($:class reduce . 100) ($:partial reduce . 100) ($:encapsulated 
    reduce . 100) ($:stream reduce . 100) ($:flow reduce . 100) ($:constant 
    reduce . 100) ($:parameter reduce . 100) ($:discrete reduce . 100) 
    ($:output reduce . 100) ($:input reduce . 100) ($ident reduce . 100) 
    ($:. reduce . 100) ($:replaceable reduce . 100)) (($ident shift . 26) 
    ($:. shift . 27) (ident shift . 28) ($:output shift . 74) ($:input shift 
    . 75) ($:constant shift . 76) ($:parameter shift . 77) ($:discrete shift 
    . 78) ($:stream shift . 79) ($:flow shift . 80) ($:function shift . 1) 
    ($:pure shift . 2) ($:impure shift . 3) ($:package shift . 4) ($:type 
    shift . 5) ($:connector shift . 6) ($:expandable shift . 7) ($:block shift
    . 8) ($:record shift . 9) ($:operator shift . 10) ($:model shift . 11) 
    ($:class shift . 12) (name shift . 81) (type-prefix-3 shift . 82) (
    type-prefix-2 shift . 83) (type-prefix-1 shift . 84) (class-prefixes-1 
    shift . 13) ($:partial shift . 14) (type-specifier shift . 85) (
    type-prefix shift . 86) (class-prefixes shift . 15) ($:encapsulated shift 
    . 16) (component-clause shift . 87) (class-definition shift . 88) (
    $:replaceable shift . 91) (element-2 shift . 92) (element-1 shift . 236)) 
    ((#{$:;}# reduce . 87)) (($:constrainedby shift . 234) (
    constraining-clause shift . 235) (#{$:;}# reduce . 103)) (($:. shift . 233
    ) ($string reduce . 109) ($:annotation reduce . 109) (#{$:;}# reduce . 109
    )) (($:= shift . 232) ($:annotation reduce . 311) ($string reduce . 311) 
    ($:. reduce . 311) (#{$:;}# reduce . 311)) (($string shift . 50) (string 
    shift . 51) (string-cat-1 shift . 52) (string-cat shift . 53) (
    string-comment shift . 193) (comment shift . 231) (#{$:;}# reduce . 347) 
    ($:annotation reduce . 347)) (($:. shift . 60) ($:annotation shift . 119) 
    (annotation shift . 229) (#{$:\x28;}# shift . 67) (class-modification 
    shift . 230) (#{$:;}# reduce . 118)) (($ident shift . 26) (ident shift . 
    139) (declaration shift . 140) (component-declaration shift . 141) 
    (component-list-1 shift . 142) (component-list shift . 227) (#{$:\x5b;}# 
    shift . 137) (array-subscripts shift . 228)) (($ident shift . 26) ($string
    shift . 50) ($float shift . 198) ($fixed shift . 199) ($:. shift . 27) 
    (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) 
    (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 204) ($:true 
    shift . 205) ($:false shift . 206) (string shift . 207) (unsigned-number 
    shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary shift . 211) 
    (unary-expr shift . 212) (factor shift . 213) (term shift . 214) (
    arithmetic-expression shift . 215) ($:not shift . 216) (relation shift . 
    217) (logical-factor shift . 218) (logical-term shift . 219) (
    logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 223) ($:: shift . 224) (subscript shift 
    . 225) (array-subscript-list shift . 226)) (($ident shift . 26) (ident 
    shift . 139) (declaration shift . 140) (component-declaration shift . 141)
    (component-list-1 shift . 142) (component-list shift . 197)) ((#{$:\x5b;}#
    shift . 137) (array-subscripts shift . 195) ($P7 shift . 196) ($string 
    reduce . 147) ($:annotation reduce . 147) ($:if reduce . 147) ($:, reduce 
    . 147) (#{$:;}# reduce . 147) ($:constrainedby reduce . 147) (#{$:\x29;}# 
    reduce . 147) (#{$:\x28;}# reduce . 147) ($::= reduce . 147) ($:= reduce 
    . 147)) (($:if shift . 191) (condition-attribute shift . 192) ($string 
    shift . 50) (string shift . 51) (string-cat-1 shift . 52) (string-cat 
    shift . 53) (string-comment shift . 193) (comment shift . 194) ($:, reduce
    . 347) (#{$:;}# reduce . 347) ($:constrainedby reduce . 347) ($:annotation
    reduce . 347)) (($:, reduce . 141) (#{$:;}# reduce . 141) ($:constrainedby
    reduce . 141)) (($:, shift . 190) (#{$:;}# reduce . 140) ($:constrainedby 
    reduce . 140)) ((#{$:;}# reduce . 124) ($:constrainedby reduce . 124)) 
    (($:output shift . 74) ($:input shift . 75) (type-prefix-3 shift . 189) 
    ($ident reduce . 126) ($:. reduce . 126)) (($ident reduce . 127) ($:. 
    reduce . 127)) (($ident reduce . 128) ($:. reduce . 128)) ((#{$:\x5b;}# 
    shift . 137) (array-subscripts shift . 187) (opt-array-subscripts shift . 
    188) (#{$:;}# reduce . 46) ($:constrainedby reduce . 46) ($:stream reduce 
    . 46) ($:flow reduce . 46) ($:constant reduce . 46) ($:parameter reduce . 
    46) ($:discrete reduce . 46) ($:output reduce . 46) ($:input reduce . 46) 
    (#{$:\x29;}# reduce . 46) ($:, reduce . 46) ($string reduce . 46) (
    $:annotation reduce . 46) (#{$:\x28;}# reduce . 46)) (($:: shift . 183) 
    ($ident shift . 26) (ident shift . 184) (enumeration-literal shift . 185) 
    (enum-list shift . 186)) (($ident shift . 26) ($:. shift . 27) (ident 
    shift . 28) (name shift . 81) (type-specifier shift . 182)) (($ident shift
    . 26) ($:. shift . 27) (ident shift . 28) ($:output shift . 74) ($:input 
    shift . 75) ($:constant shift . 76) ($:parameter shift . 77) ($:discrete 
    shift . 78) ($:stream shift . 79) ($:flow shift . 80) ($:function shift . 
    1) ($:pure shift . 2) ($:impure shift . 3) ($:package shift . 4) ($:type 
    shift . 5) ($:connector shift . 6) ($:expandable shift . 7) ($:block shift
    . 8) ($:record shift . 9) ($:operator shift . 10) ($:model shift . 11) 
    ($:class shift . 12) (name shift . 81) (type-prefix-3 shift . 82) (
    type-prefix-2 shift . 83) (type-prefix-1 shift . 84) (class-prefixes-1 
    shift . 13) ($:partial shift . 14) (type-specifier shift . 85) (
    type-prefix shift . 86) (class-prefixes shift . 15) ($:encapsulated shift 
    . 16) (component-clause shift . 87) (class-definition shift . 88) (
    $:extends shift . 89) ($:import shift . 90) ($:replaceable shift . 91) 
    (element-2 shift . 92) (element-1 shift . 93) ($:outer shift . 94) 
    ($:inner shift . 95) ($:final shift . 96) ($:redeclare shift . 97) 
    (extends-clause shift . 98) (import-clause shift . 99) (element shift . 
    100) (element-list-1 shift . 101) (element-list shift . 102) (composition 
    shift . 181)) (($:function shift . 1) ($:pure shift . 2) ($:impure shift 
    . 3) ($:package shift . 4) ($:type shift . 5) ($:connector shift . 6) 
    ($:expandable shift . 7) ($:block shift . 8) ($:record shift . 9) (
    $:operator shift . 10) ($:model shift . 11) ($:class shift . 12) (
    class-prefixes-1 shift . 13) ($:partial shift . 14) (class-prefixes shift 
    . 179) (short-class-definition shift . 180)) ((#{$:\x28;}# shift . 67) 
    ($::= shift . 174) ($:= shift . 175) (class-modification shift . 176) 
    (modification shift . 177) ($P9 shift . 178) ($:. shift . 60) (#{$:\x29;}#
    reduce . 169) ($:, reduce . 169) ($string reduce . 169)) ((#{$:\x29;}# 
    reduce . 167) ($:, reduce . 167)) ((#{$:\x29;}# reduce . 166) ($:, reduce 
    . 166)) (($:each shift . 172) ($P10 shift . 173) ($:function reduce . 172)
    ($:pure reduce . 172) ($:impure reduce . 172) ($:package reduce . 172) 
    ($:type reduce . 172) ($:connector reduce . 172) ($:expandable reduce . 
    172) ($:block reduce . 172) ($:record reduce . 172) ($:operator reduce . 
    172) ($:model reduce . 172) ($:class reduce . 172) ($:partial reduce . 172
    ) ($:stream reduce . 172) ($:flow reduce . 172) ($:constant reduce . 172) 
    ($:parameter reduce . 172) ($:discrete reduce . 172) ($:output reduce . 
    172) ($:input reduce . 172) ($:replaceable reduce . 172) ($:final reduce 
    . 172)) ((#{$:\x29;}# reduce . 165) ($:, reduce . 165)) (($ident shift . 
    26) ($:. shift . 27) (ident shift . 28) ($:replaceable shift . 151) 
    (name shift . 152) (element-replaceable shift . 153) (element-modification
    shift . 154) (elt-mod-or-repl-1 shift . 171)) (($:final shift . 169) 
    ($ident shift . 26) ($:. shift . 27) (ident shift . 28) ($:replaceable 
    shift . 151) (name shift . 152) (element-replaceable shift . 153) (
    element-modification shift . 154) (elt-mod-or-repl-1 shift . 170)) 
    ((#{$:\x29;}# reduce . 161) ($:, reduce . 161)) ((#{$:\x29;}# reduce . 160
    ) ($:, reduce . 160)) ((#{$:\x29;}# reduce . 158) ($:, reduce . 158)) 
    (($:, shift . 168) (#{$:\x29;}# reduce . 157)) ((#{$:\x29;}# shift . 167))
    (($:import reduce . 156) ($:extends reduce . 156) ($:function reduce . 156
    ) ($:pure reduce . 156) ($:impure reduce . 156) ($:package reduce . 156) 
    ($:type reduce . 156) ($:connector reduce . 156) ($:expandable reduce . 
    156) ($:block reduce . 156) ($:record reduce . 156) ($:operator reduce . 
    156) ($:model reduce . 156) ($:class reduce . 156) ($:partial reduce . 156
    ) ($:encapsulated reduce . 156) ($:stream reduce . 156) ($:flow reduce . 
    156) ($:constant reduce . 156) ($:parameter reduce . 156) ($:discrete 
    reduce . 156) ($:output reduce . 156) ($:input reduce . 156) ($ident 
    reduce . 156) ($:. reduce . 156) ($:replaceable reduce . 156) ($:outer 
    reduce . 156) ($:inner reduce . 156) ($:final reduce . 156) ($:redeclare 
    reduce . 156) ($string reduce . 156) ($:annotation reduce . 156) ($:= 
    reduce . 156) (#{$:;}# reduce . 156) (#{$:\x29;}# reduce . 156) ($:, 
    reduce . 156) ($:constrainedby reduce . 156) ($:if reduce . 156)) (
    ($:end shift . 166)) (($ident shift . 26) (ident shift . 412)) (($:import 
    reduce . 155) ($:extends reduce . 155) ($:function reduce . 155) ($:pure 
    reduce . 155) ($:impure reduce . 155) ($:package reduce . 155) ($:type 
    reduce . 155) ($:connector reduce . 155) ($:expandable reduce . 155) 
    ($:block reduce . 155) ($:record reduce . 155) ($:operator reduce . 155) 
    ($:model reduce . 155) ($:class reduce . 155) ($:partial reduce . 155) 
    ($:encapsulated reduce . 155) ($:stream reduce . 155) ($:flow reduce . 155
    ) ($:constant reduce . 155) ($:parameter reduce . 155) ($:discrete reduce 
    . 155) ($:output reduce . 155) ($:input reduce . 155) ($ident reduce . 155
    ) ($:. reduce . 155) ($:replaceable reduce . 155) ($:outer reduce . 155) 
    ($:inner reduce . 155) ($:final reduce . 155) ($:redeclare reduce . 155) 
    ($string reduce . 155) ($:annotation reduce . 155) ($:= reduce . 155) 
    (#{$:;}# reduce . 155) (#{$:\x29;}# reduce . 155) ($:, reduce . 155) 
    ($:constrainedby reduce . 155) ($:if reduce . 155)) (($ident shift . 26) 
    ($:. shift . 27) (ident shift . 28) ($:replaceable shift . 151) (name 
    shift . 152) (element-replaceable shift . 153) (element-modification shift
    . 154) ($:redeclare shift . 155) (elt-mod-or-repl-1 shift . 156) ($:final 
    shift . 157) ($:each shift . 158) (element-redeclaration shift . 159) 
    (element-modification-or-replaceable shift . 160) (argument shift . 411)) 
    (($ident shift . 26) ($:. shift . 27) (ident shift . 28) ($:replaceable 
    shift . 151) (name shift . 152) (element-replaceable shift . 153) (
    element-modification shift . 154) (elt-mod-or-repl-1 shift . 410)) 
    ((#{$:\x29;}# reduce . 163) ($:, reduce . 163)) ((#{$:\x29;}# reduce . 164
    ) ($:, reduce . 164)) (($:function reduce . 173) ($:pure reduce . 173) 
    ($:impure reduce . 173) ($:package reduce . 173) ($:type reduce . 173) 
    ($:connector reduce . 173) ($:expandable reduce . 173) ($:block reduce . 
    173) ($:record reduce . 173) ($:operator reduce . 173) ($:model reduce . 
    173) ($:class reduce . 173) ($:partial reduce . 173) ($:stream reduce . 
    173) ($:flow reduce . 173) ($:constant reduce . 173) ($:parameter reduce 
    . 173) ($:discrete reduce . 173) ($:output reduce . 173) ($:input reduce 
    . 173) ($:replaceable reduce . 173) ($:final reduce . 173)) (($:final 
    shift . 408) ($P11 shift . 409) ($:function reduce . 174) ($:pure reduce 
    . 174) ($:impure reduce . 174) ($:package reduce . 174) ($:type reduce . 
    174) ($:connector reduce . 174) ($:expandable reduce . 174) ($:block 
    reduce . 174) ($:record reduce . 174) ($:operator reduce . 174) ($:model 
    reduce . 174) ($:class reduce . 174) ($:partial reduce . 174) ($:stream 
    reduce . 174) ($:flow reduce . 174) ($:constant reduce . 174) ($:parameter
    reduce . 174) ($:discrete reduce . 174) ($:output reduce . 174) ($:input 
    reduce . 174) ($:replaceable reduce . 174)) (($ident shift . 26) ($string 
    shift . 50) ($float shift . 198) ($fixed shift . 199) ($:. shift . 27) 
    (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) 
    (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 204) ($:true 
    shift . 205) ($:false shift . 206) (string shift . 207) (unsigned-number 
    shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary shift . 211) 
    (unary-expr shift . 212) (factor shift . 213) (term shift . 214) (
    arithmetic-expression shift . 215) ($:not shift . 216) (relation shift . 
    217) (logical-factor shift . 218) (logical-term shift . 219) (
    logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 407)) (($ident shift . 26) ($string shift
    . 50) ($float shift . 198) ($fixed shift . 199) ($:. shift . 27) (ident 
    shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (
    #{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 204) ($:true 
    shift . 205) ($:false shift . 206) (string shift . 207) (unsigned-number 
    shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary shift . 211) 
    (unary-expr shift . 212) (factor shift . 213) (term shift . 214) (
    arithmetic-expression shift . 215) ($:not shift . 216) (relation shift . 
    217) (logical-factor shift . 218) (logical-term shift . 219) (
    logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 406)) (($:= shift . 405) ($string reduce 
    . 152) (#{$:\x29;}# reduce . 152) ($:, reduce . 152) ($:annotation reduce 
    . 152) ($:if reduce . 152) (#{$:;}# reduce . 152) ($:constrainedby reduce 
    . 152)) (($string reduce . 170) (#{$:\x29;}# reduce . 170) ($:, reduce . 
    170)) (($string shift . 50) (string shift . 51) (string-cat-1 shift . 52) 
    (string-cat shift . 53) (string-comment shift . 404) ($:, reduce . 347) 
    (#{$:\x29;}# reduce . 347)) (($ident shift . 26) (ident shift . 402) 
    (short-class-specifier shift . 403)) (($:output shift . 74) ($:input shift
    . 75) ($:constant shift . 76) ($:parameter shift . 77) ($:discrete shift 
    . 78) ($:stream shift . 79) ($:flow shift . 80) (type-prefix-3 shift . 82)
    (type-prefix-2 shift . 83) (type-prefix-1 shift . 84) (type-prefix shift 
    . 400) (component-clause1 shift . 401)) (($:end shift . 399)) (($:, shift 
    . 398)) ((#{$:\x29;}# shift . 397)) (($string shift . 50) (string shift . 
    51) (string-cat-1 shift . 52) (string-cat shift . 53) (string-comment 
    shift . 193) (comment shift . 396) (#{$:\x29;}# reduce . 347) ($:, reduce 
    . 347) ($:annotation reduce . 347)) ((#{$:\x29;}# reduce . 50) ($:, reduce
    . 50)) ((#{$:\x29;}# shift . 394) ($:, shift . 395)) (($string reduce . 47
    ) ($:annotation reduce . 47) (#{$:\x28;}# reduce . 47) (#{$:;}# reduce . 
    47) ($:constrainedby reduce . 47) ($:stream reduce . 47) ($:flow reduce . 
    47) ($:constant reduce . 47) ($:parameter reduce . 47) ($:discrete reduce 
    . 47) ($:output reduce . 47) ($:input reduce . 47) (#{$:\x29;}# reduce . 
    47) ($:, reduce . 47)) ((#{$:\x28;}# shift . 67) (class-modification shift
    . 392) (opt-class-modification shift . 393) (#{$:;}# reduce . 48) (
    $:constrainedby reduce . 48) ($:stream reduce . 48) ($:flow reduce . 48) 
    ($:constant reduce . 48) ($:parameter reduce . 48) ($:discrete reduce . 48
    ) ($:output reduce . 48) ($:input reduce . 48) (#{$:\x29;}# reduce . 48) 
    ($:, reduce . 48) ($string reduce . 48) ($:annotation reduce . 48)) 
    (($ident reduce . 125) ($:. reduce . 125)) (($ident shift . 26) (ident 
    shift . 139) (declaration shift . 140) (component-declaration shift . 391)
    ) (($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 390)) (($string shift 
    . 50) (string shift . 51) (string-cat-1 shift . 52) (string-cat shift . 53
    ) (string-comment shift . 193) (comment shift . 389) ($:, reduce . 347) 
    (#{$:;}# reduce . 347) ($:constrainedby reduce . 347) ($:annotation reduce
    . 347)) (($:annotation shift . 119) (annotation shift . 388) (#{$:;}# 
    reduce . 346) ($:, reduce . 346) ($:constrainedby reduce . 346) (
    #{$:\x29;}# reduce . 346) ($:stream reduce . 346) ($:flow reduce . 346) 
    ($:constant reduce . 346) ($:parameter reduce . 346) ($:discrete reduce . 
    346) ($:output reduce . 346) ($:input reduce . 346)) (($:, reduce . 144) 
    (#{$:;}# reduce . 144) ($:constrainedby reduce . 144)) ((#{$:\x28;}# 
    reduce . 148) ($::= reduce . 148) ($:= reduce . 148) ($string reduce . 148
    ) ($:annotation reduce . 148) ($:if reduce . 148) ($:, reduce . 148) 
    (#{$:;}# reduce . 148) ($:constrainedby reduce . 148) (#{$:\x29;}# reduce 
    . 148)) ((#{$:\x28;}# shift . 67) ($::= shift . 174) ($:= shift . 175) 
    (class-modification shift . 176) (modification shift . 386) ($P8 shift . 
    387) (#{$:\x29;}# reduce . 149) ($:constrainedby reduce . 149) (#{$:;}# 
    reduce . 149) ($:, reduce . 149) ($:if reduce . 149) ($:annotation reduce 
    . 149) ($string reduce . 149)) ((#{$:;}# reduce . 123) ($:constrainedby 
    reduce . 123)) (($:= reduce . 356) ($:: reduce . 356) ($:^ reduce . 356) 
    ($:.^ reduce . 356) ($:./ reduce . 356) ($:.* reduce . 356) ($:/ reduce . 
    356) ($:* reduce . 356) ($:+ reduce . 356) ($:- reduce . 356) ($:.+ reduce
    . 356) ($:.- reduce . 356) ($:<> reduce . 356) ($:== reduce . 356) 
    ($:>= reduce . 356) ($:> reduce . 356) ($:<= reduce . 356) ($:< reduce . 
    356) ($:and reduce . 356) ($:or reduce . 356) (#{$:\x5d;}# reduce . 356) 
    ($:, reduce . 356) (#{$:\x7d;}# reduce . 356) (#{$:;}# reduce . 356) 
    (#{$:\x29;}# reduce . 356) ($:then reduce . 356) ($:loop reduce . 356) 
    ($:else reduce . 356) ($:elseif reduce . 356) ($string reduce . 356) 
    ($:annotation reduce . 356) ($:constrainedby reduce . 356) ($:end reduce 
    . 356) ($:elsewhen reduce . 356) ($:if reduce . 356)) (($:= reduce . 355) 
    ($:: reduce . 355) ($:^ reduce . 355) ($:.^ reduce . 355) ($:./ reduce . 
    355) ($:.* reduce . 355) ($:/ reduce . 355) ($:* reduce . 355) ($:+ reduce
    . 355) ($:- reduce . 355) ($:.+ reduce . 355) ($:.- reduce . 355) ($:<> 
    reduce . 355) ($:== reduce . 355) ($:>= reduce . 355) ($:> reduce . 355) 
    ($:<= reduce . 355) ($:< reduce . 355) ($:and reduce . 355) ($:or reduce 
    . 355) (#{$:\x5d;}# reduce . 355) ($:, reduce . 355) (#{$:\x7d;}# reduce 
    . 355) (#{$:;}# reduce . 355) (#{$:\x29;}# reduce . 355) ($:then reduce . 
    355) ($:loop reduce . 355) ($:else reduce . 355) ($:elseif reduce . 355) 
    ($string reduce . 355) ($:annotation reduce . 355) ($:constrainedby reduce
    . 355) ($:end reduce . 355) ($:elsewhen reduce . 355) ($:if reduce . 355))
    (($string shift . 50) ($float shift . 198) ($fixed shift . 199) ($:. shift
    . 27) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# 
    shift . 202) ($:der shift . 203) (name shift . 204) ($:true shift . 205) 
    ($:false shift . 206) (string shift . 207) (unsigned-number shift . 208) 
    ($:- shift . 209) ($:+ shift . 210) (primary shift . 211) (unary-expr 
    shift . 212) (factor shift . 213) (term shift . 214) (
    arithmetic-expression shift . 215) ($:not shift . 216) (relation shift . 
    217) (logical-factor shift . 218) (logical-term shift . 219) (
    logical-expression shift . 220) ($ident shift . 26) ($:if shift . 221) 
    (simple-expression shift . 222) (expression shift . 378) ($:function shift
    . 379) (ident shift . 380) (named-argument shift . 381) (function-argument
    shift . 382) (named-only-arguments-1 shift . 383) (function-arguments-1 
    shift . 384) (function-arguments shift . 385)) (($ident shift . 26) 
    ($string shift . 50) ($float shift . 198) ($fixed shift . 199) ($:. shift 
    . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 
    201) (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 204) 
    ($:true shift . 205) ($:false shift . 206) (string shift . 207) (
    unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary 
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) ($:not shift . 216) (relation 
    shift . 217) (logical-factor shift . 218) (logical-term shift . 219) 
    (logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 374) (expression-list-1 shift . 375) 
    (expression-list shift . 376) (expression-list-list shift . 377)) (
    ($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 299) ($:, shift . 300) 
    (output-expression-list shift . 373)) ((#{$:\x28;}# shift . 297) (
    function-call-args shift . 372)) ((#{$:\x28;}# shift . 297) (
    function-call-args shift . 371) (#{$:\x5b;}# shift . 137) (
    array-subscripts shift . 314) ($:. shift . 60) ($:: reduce . 304) (
    #{$:\x5d;}# reduce . 304) ($:, reduce . 304) ($:or reduce . 304) ($:and 
    reduce . 304) ($:< reduce . 304) ($:<= reduce . 304) ($:> reduce . 304) 
    ($:>= reduce . 304) ($:== reduce . 304) ($:<> reduce . 304) ($:.- reduce 
    . 304) ($:.+ reduce . 304) ($:- reduce . 304) ($:+ reduce . 304) ($:* 
    reduce . 304) ($:/ reduce . 304) ($:.* reduce . 304) ($:./ reduce . 304) 
    ($:.^ reduce . 304) ($:^ reduce . 304) (#{$:\x7d;}# reduce . 304) (#{$:;}#
    reduce . 304) (#{$:\x29;}# reduce . 304) ($:then reduce . 304) ($:loop 
    reduce . 304) ($:else reduce . 304) ($:elseif reduce . 304) ($string 
    reduce . 304) ($:annotation reduce . 304) ($:constrainedby reduce . 304) 
    ($:= reduce . 304) ($:end reduce . 304) ($:elsewhen reduce . 304) ($:if 
    reduce . 304)) (($:: reduce . 301) ($:= reduce . 301) ($:or reduce . 301) 
    ($:and reduce . 301) ($:< reduce . 301) ($:<= reduce . 301) ($:> reduce . 
    301) ($:>= reduce . 301) ($:== reduce . 301) ($:<> reduce . 301) ($:.- 
    reduce . 301) ($:.+ reduce . 301) ($:- reduce . 301) ($:+ reduce . 301) 
    ($:* reduce . 301) ($:/ reduce . 301) ($:.* reduce . 301) ($:./ reduce . 
    301) ($:.^ reduce . 301) ($:^ reduce . 301) (#{$:\x5d;}# reduce . 301) 
    ($:, reduce . 301) (#{$:\x7d;}# reduce . 301) (#{$:;}# reduce . 301) 
    (#{$:\x29;}# reduce . 301) ($:then reduce . 301) ($:loop reduce . 301) 
    ($:else reduce . 301) ($:elseif reduce . 301) ($string reduce . 301) 
    ($:annotation reduce . 301) ($:constrainedby reduce . 301) ($:end reduce 
    . 301) ($:elsewhen reduce . 301) ($:if reduce . 301)) (($:: reduce . 300) 
    ($:= reduce . 300) ($:or reduce . 300) ($:and reduce . 300) ($:< reduce . 
    300) ($:<= reduce . 300) ($:> reduce . 300) ($:>= reduce . 300) ($:== 
    reduce . 300) ($:<> reduce . 300) ($:.- reduce . 300) ($:.+ reduce . 300) 
    ($:- reduce . 300) ($:+ reduce . 300) ($:* reduce . 300) ($:/ reduce . 300
    ) ($:.* reduce . 300) ($:./ reduce . 300) ($:.^ reduce . 300) ($:^ reduce 
    . 300) (#{$:\x5d;}# reduce . 300) ($:, reduce . 300) (#{$:\x7d;}# reduce 
    . 300) (#{$:;}# reduce . 300) (#{$:\x29;}# reduce . 300) ($:then reduce . 
    300) ($:loop reduce . 300) ($:else reduce . 300) ($:elseif reduce . 300) 
    ($string reduce . 300) ($:annotation reduce . 300) ($:constrainedby reduce
    . 300) ($:end reduce . 300) ($:elsewhen reduce . 300) ($:if reduce . 300))
    (($:: reduce . 299) ($:= reduce . 299) ($:or reduce . 299) ($:and reduce 
    . 299) ($:< reduce . 299) ($:<= reduce . 299) ($:> reduce . 299) ($:>= 
    reduce . 299) ($:== reduce . 299) ($:<> reduce . 299) ($:.- reduce . 299) 
    ($:.+ reduce . 299) ($:- reduce . 299) ($:+ reduce . 299) ($:* reduce . 
    299) ($:/ reduce . 299) ($:.* reduce . 299) ($:./ reduce . 299) ($:.^ 
    reduce . 299) ($:^ reduce . 299) (#{$:\x5d;}# reduce . 299) ($:, reduce . 
    299) (#{$:\x7d;}# reduce . 299) (#{$:;}# reduce . 299) (#{$:\x29;}# reduce
    . 299) ($:then reduce . 299) ($:loop reduce . 299) ($:else reduce . 299) 
    ($:elseif reduce . 299) ($string reduce . 299) ($:annotation reduce . 299)
    ($:constrainedby reduce . 299) ($:end reduce . 299) ($:elsewhen reduce . 
    299) ($:if reduce . 299)) (($:: reduce . 298) ($:= reduce . 298) ($:or 
    reduce . 298) ($:and reduce . 298) ($:< reduce . 298) ($:<= reduce . 298) 
    ($:> reduce . 298) ($:>= reduce . 298) ($:== reduce . 298) ($:<> reduce . 
    298) ($:.- reduce . 298) ($:.+ reduce . 298) ($:- reduce . 298) ($:+ 
    reduce . 298) ($:* reduce . 298) ($:/ reduce . 298) ($:.* reduce . 298) 
    ($:./ reduce . 298) ($:.^ reduce . 298) ($:^ reduce . 298) (#{$:\x5d;}# 
    reduce . 298) ($:, reduce . 298) (#{$:\x7d;}# reduce . 298) (#{$:;}# 
    reduce . 298) (#{$:\x29;}# reduce . 298) ($:then reduce . 298) ($:loop 
    reduce . 298) ($:else reduce . 298) ($:elseif reduce . 298) ($string 
    reduce . 298) ($:annotation reduce . 298) ($:constrainedby reduce . 298) 
    ($:end reduce . 298) ($:elsewhen reduce . 298) ($:if reduce . 298)) 
    (($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) (primary shift . 370)) (
    ($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) (primary shift . 369)) (
    ($:= reduce . 295) ($:: reduce . 295) ($:^ reduce . 295) ($:.^ reduce . 
    295) ($:./ reduce . 295) ($:.* reduce . 295) ($:/ reduce . 295) ($:* 
    reduce . 295) ($:+ reduce . 295) ($:- reduce . 295) ($:.+ reduce . 295) 
    ($:.- reduce . 295) ($:<> reduce . 295) ($:== reduce . 295) ($:>= reduce 
    . 295) ($:> reduce . 295) ($:<= reduce . 295) ($:< reduce . 295) ($:and 
    reduce . 295) ($:or reduce . 295) (#{$:\x5d;}# reduce . 295) ($:, reduce 
    . 295) (#{$:\x7d;}# reduce . 295) (#{$:;}# reduce . 295) (#{$:\x29;}# 
    reduce . 295) ($:then reduce . 295) ($:loop reduce . 295) ($:else reduce 
    . 295) ($:elseif reduce . 295) ($string reduce . 295) ($:annotation reduce
    . 295) ($:constrainedby reduce . 295) ($:end reduce . 295) ($:elsewhen 
    reduce . 295) ($:if reduce . 295)) (($:: reduce . 292) ($:= reduce . 292) 
    ($:or reduce . 292) ($:and reduce . 292) ($:< reduce . 292) ($:<= reduce 
    . 292) ($:> reduce . 292) ($:>= reduce . 292) ($:== reduce . 292) ($:<> 
    reduce . 292) ($:.- reduce . 292) ($:.+ reduce . 292) ($:- reduce . 292) 
    ($:+ reduce . 292) ($:* reduce . 292) ($:/ reduce . 292) ($:.* reduce . 
    292) ($:./ reduce . 292) ($:.^ reduce . 292) ($:^ reduce . 292) (
    #{$:\x5d;}# reduce . 292) ($:, reduce . 292) (#{$:\x7d;}# reduce . 292) 
    (#{$:;}# reduce . 292) (#{$:\x29;}# reduce . 292) ($:then reduce . 292) 
    ($:loop reduce . 292) ($:else reduce . 292) ($:elseif reduce . 292) 
    ($string reduce . 292) ($:annotation reduce . 292) ($:constrainedby reduce
    . 292) ($:end reduce . 292) ($:elsewhen reduce . 292) ($:if reduce . 292))
    (($:^ shift . 367) ($:.^ shift . 368) ($:= reduce . 286) ($:: reduce . 286
    ) ($:./ reduce . 286) ($:.* reduce . 286) ($:/ reduce . 286) ($:* reduce 
    . 286) ($:+ reduce . 286) ($:- reduce . 286) ($:.+ reduce . 286) ($:.- 
    reduce . 286) ($:<> reduce . 286) ($:== reduce . 286) ($:>= reduce . 286) 
    ($:> reduce . 286) ($:<= reduce . 286) ($:< reduce . 286) ($:and reduce . 
    286) ($:or reduce . 286) (#{$:\x5d;}# reduce . 286) ($:, reduce . 286) 
    (#{$:\x7d;}# reduce . 286) (#{$:;}# reduce . 286) (#{$:\x29;}# reduce . 
    286) ($:then reduce . 286) ($:loop reduce . 286) ($:else reduce . 286) 
    ($:elseif reduce . 286) ($string reduce . 286) ($:annotation reduce . 286)
    ($:constrainedby reduce . 286) ($:end reduce . 286) ($:elsewhen reduce . 
    286) ($:if reduce . 286)) (($:./ shift . 362) ($:.* shift . 363) ($:/ 
    shift . 364) ($:* shift . 365) (mul-op shift . 366) ($:: reduce . 280) 
    ($:= reduce . 280) ($:or reduce . 280) ($:and reduce . 280) ($:< reduce . 
    280) ($:<= reduce . 280) ($:> reduce . 280) ($:>= reduce . 280) ($:== 
    reduce . 280) ($:<> reduce . 280) ($:.- reduce . 280) ($:.+ reduce . 280) 
    ($:- reduce . 280) ($:+ reduce . 280) (#{$:\x5d;}# reduce . 280) ($:, 
    reduce . 280) (#{$:\x7d;}# reduce . 280) (#{$:;}# reduce . 280) (
    #{$:\x29;}# reduce . 280) ($:then reduce . 280) ($:loop reduce . 280) 
    ($:else reduce . 280) ($:elseif reduce . 280) ($string reduce . 280) 
    ($:annotation reduce . 280) ($:constrainedby reduce . 280) ($:end reduce 
    . 280) ($:elsewhen reduce . 280) ($:if reduce . 280)) (($:.- shift . 357) 
    ($:.+ shift . 358) ($:- shift . 359) ($:+ shift . 360) (add-op shift . 361
    ) ($:= reduce . 272) ($:: reduce . 272) ($:<> reduce . 272) ($:== reduce 
    . 272) ($:>= reduce . 272) ($:> reduce . 272) ($:<= reduce . 272) ($:< 
    reduce . 272) ($:and reduce . 272) ($:or reduce . 272) (#{$:\x5d;}# reduce
    . 272) ($:, reduce . 272) (#{$:\x7d;}# reduce . 272) (#{$:;}# reduce . 272
    ) (#{$:\x29;}# reduce . 272) ($:then reduce . 272) ($:loop reduce . 272) 
    ($:else reduce . 272) ($:elseif reduce . 272) ($string reduce . 272) 
    ($:annotation reduce . 272) ($:constrainedby reduce . 272) ($:end reduce 
    . 272) ($:elsewhen reduce . 272) ($:if reduce . 272)) (($ident shift . 26)
    ($string shift . 50) ($float shift . 198) ($fixed shift . 199) ($:. shift 
    . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 
    201) (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 204) 
    ($:true shift . 205) ($:false shift . 206) (string shift . 207) (
    unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary 
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) (relation shift . 356)) (($:<> 
    shift . 349) ($:== shift . 350) ($:>= shift . 351) ($:> shift . 352) 
    ($:<= shift . 353) ($:< shift . 354) (rel-op shift . 355) ($:: reduce . 
    270) ($:= reduce . 270) ($:or reduce . 270) ($:and reduce . 270) (
    #{$:\x5d;}# reduce . 270) ($:, reduce . 270) (#{$:\x7d;}# reduce . 270) 
    (#{$:;}# reduce . 270) (#{$:\x29;}# reduce . 270) ($:then reduce . 270) 
    ($:loop reduce . 270) ($:else reduce . 270) ($:elseif reduce . 270) 
    ($string reduce . 270) ($:annotation reduce . 270) ($:constrainedby reduce
    . 270) ($:end reduce . 270) ($:elsewhen reduce . 270) ($:if reduce . 270))
    (($:= reduce . 268) ($:: reduce . 268) ($:and reduce . 268) ($:or reduce 
    . 268) (#{$:\x5d;}# reduce . 268) ($:, reduce . 268) (#{$:\x7d;}# reduce 
    . 268) (#{$:;}# reduce . 268) (#{$:\x29;}# reduce . 268) ($:then reduce . 
    268) ($:loop reduce . 268) ($:else reduce . 268) ($:elseif reduce . 268) 
    ($string reduce . 268) ($:annotation reduce . 268) ($:constrainedby reduce
    . 268) ($:end reduce . 268) ($:elsewhen reduce . 268) ($:if reduce . 268))
    (($:and shift . 348) ($:: reduce . 266) ($:= reduce . 266) ($:or reduce . 
    266) (#{$:\x5d;}# reduce . 266) ($:, reduce . 266) (#{$:\x7d;}# reduce . 
    266) (#{$:;}# reduce . 266) (#{$:\x29;}# reduce . 266) ($:then reduce . 
    266) ($:loop reduce . 266) ($:else reduce . 266) ($:elseif reduce . 266) 
    ($string reduce . 266) ($:annotation reduce . 266) ($:constrainedby reduce
    . 266) ($:end reduce . 266) ($:elsewhen reduce . 266) ($:if reduce . 266))
    (($:: shift . 346) ($:or shift . 347) ($:= reduce . 263) (#{$:\x5d;}# 
    reduce . 263) ($:, reduce . 263) (#{$:\x7d;}# reduce . 263) (#{$:;}# 
    reduce . 263) (#{$:\x29;}# reduce . 263) ($:then reduce . 263) ($:loop 
    reduce . 263) ($:else reduce . 263) ($:elseif reduce . 263) ($string 
    reduce . 263) ($:annotation reduce . 263) ($:constrainedby reduce . 263) 
    ($:end reduce . 263) ($:elsewhen reduce . 263) ($:if reduce . 263)) 
    (($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 345)) ((#{$:\x5d;}# 
    reduce . 258) ($:, reduce . 258) (#{$:\x7d;}# reduce . 258) (#{$:;}# 
    reduce . 258) (#{$:\x29;}# reduce . 258) ($:then reduce . 258) ($:loop 
    reduce . 258) ($:else reduce . 258) ($:elseif reduce . 258) ($string 
    reduce . 258) ($:annotation reduce . 258) ($:constrainedby reduce . 258) 
    ($:end reduce . 258) ($:elsewhen reduce . 258) ($:if reduce . 258)) 
    ((#{$:\x5d;}# reduce . 344) ($:, reduce . 344)) ((#{$:\x5d;}# reduce . 343
    ) ($:, reduce . 343)) ((#{$:\x5d;}# reduce . 341) ($:, reduce . 341)) 
    ((#{$:\x5d;}# shift . 343) ($:, shift . 344)) ((#{$:;}# reduce . 122) 
    ($:constrainedby reduce . 122)) (($ident shift . 26) (ident shift . 139) 
    (declaration shift . 140) (component-declaration shift . 141) (
    component-list-1 shift . 142) (component-list shift . 342)) ((#{$:;}# 
    reduce . 117)) (($:annotation shift . 119) (annotation shift . 341) 
    (#{$:;}# reduce . 116)) ((#{$:;}# reduce . 106)) (($ident shift . 26) 
    ($:. shift . 27) (ident shift . 28) (name shift . 340)) (($ident shift . 
    26) (ident shift . 65) (#{$:\x7b;}# shift . 337) ($:* shift . 338) 
    (import-clause-2 shift . 339)) (($ident shift . 26) ($:. shift . 27) 
    (ident shift . 28) (name shift . 336)) (($string shift . 50) (string shift
    . 51) (string-cat-1 shift . 52) (string-cat shift . 53) (string-comment 
    shift . 193) (comment shift . 335) (#{$:;}# reduce . 347) ($:annotation 
    reduce . 347)) ((#{$:;}# reduce . 86)) (($:function reduce . 98) ($:pure 
    reduce . 98) ($:impure reduce . 98) ($:package reduce . 98) ($:type reduce
    . 98) ($:connector reduce . 98) ($:expandable reduce . 98) ($:block reduce
    . 98) ($:record reduce . 98) ($:operator reduce . 98) ($:model reduce . 98
    ) ($:class reduce . 98) ($:partial reduce . 98) ($:encapsulated reduce . 
    98) ($:stream reduce . 98) ($:flow reduce . 98) ($:constant reduce . 98) 
    ($:parameter reduce . 98) ($:discrete reduce . 98) ($:output reduce . 98) 
    ($:input reduce . 98) ($ident reduce . 98) ($:. reduce . 98) (
    $:replaceable reduce . 98)) (($ident shift . 26) ($:. shift . 27) (ident 
    shift . 28) ($:output shift . 74) ($:input shift . 75) ($:constant shift 
    . 76) ($:parameter shift . 77) ($:discrete shift . 78) ($:stream shift . 
    79) ($:flow shift . 80) ($:function shift . 1) ($:pure shift . 2) (
    $:impure shift . 3) ($:package shift . 4) ($:type shift . 5) ($:connector 
    shift . 6) ($:expandable shift . 7) ($:block shift . 8) ($:record shift . 
    9) ($:operator shift . 10) ($:model shift . 11) ($:class shift . 12) 
    (name shift . 81) (type-prefix-3 shift . 82) (type-prefix-2 shift . 83) 
    (type-prefix-1 shift . 84) (class-prefixes-1 shift . 13) ($:partial shift 
    . 14) (type-specifier shift . 85) (type-prefix shift . 86) (class-prefixes
    shift . 15) ($:encapsulated shift . 16) (component-clause shift . 87) 
    (class-definition shift . 88) ($:replaceable shift . 91) (element-2 shift 
    . 92) (element-1 shift . 334)) (($:function reduce . 92) ($:pure reduce . 
    92) ($:impure reduce . 92) ($:package reduce . 92) ($:type reduce . 92) 
    ($:connector reduce . 92) ($:expandable reduce . 92) ($:block reduce . 92)
    ($:record reduce . 92) ($:operator reduce . 92) ($:model reduce . 92) 
    ($:class reduce . 92) ($:partial reduce . 92) ($:encapsulated reduce . 92)
    ($:stream reduce . 92) ($:flow reduce . 92) ($:constant reduce . 92) 
    ($:parameter reduce . 92) ($:discrete reduce . 92) ($:output reduce . 92) 
    ($:input reduce . 92) ($ident reduce . 92) ($:. reduce . 92) (
    $:replaceable reduce . 92) ($:outer reduce . 92)) (($:outer shift . 332) 
    ($P3 shift . 333) ($:function reduce . 93) ($:pure reduce . 93) ($:impure 
    reduce . 93) ($:package reduce . 93) ($:type reduce . 93) ($:connector 
    reduce . 93) ($:expandable reduce . 93) ($:block reduce . 93) ($:record 
    reduce . 93) ($:operator reduce . 93) ($:model reduce . 93) ($:class 
    reduce . 93) ($:partial reduce . 93) ($:encapsulated reduce . 93) (
    $:stream reduce . 93) ($:flow reduce . 93) ($:constant reduce . 93) 
    ($:parameter reduce . 93) ($:discrete reduce . 93) ($:output reduce . 93) 
    ($:input reduce . 93) ($ident reduce . 93) ($:. reduce . 93) (
    $:replaceable reduce . 93)) (($:public reduce . 81) ($:protected reduce . 
    81) ($:initial reduce . 81) ($:algorithm reduce . 81) ($:equation reduce 
    . 81) ($:external reduce . 81) ($:annotation reduce . 81) ($:end reduce . 
    81) ($:import reduce . 81) ($:extends reduce . 81) ($:function reduce . 81
    ) ($:pure reduce . 81) ($:impure reduce . 81) ($:package reduce . 81) 
    ($:type reduce . 81) ($:connector reduce . 81) ($:expandable reduce . 81) 
    ($:block reduce . 81) ($:record reduce . 81) ($:operator reduce . 81) 
    ($:model reduce . 81) ($:class reduce . 81) ($:partial reduce . 81) 
    ($:encapsulated reduce . 81) ($:stream reduce . 81) ($:flow reduce . 81) 
    ($:constant reduce . 81) ($:parameter reduce . 81) ($:discrete reduce . 81
    ) ($:output reduce . 81) ($:input reduce . 81) ($ident reduce . 81) 
    ($:. reduce . 81) ($:replaceable reduce . 81) ($:outer reduce . 81) 
    ($:inner reduce . 81) ($:final reduce . 81) ($:redeclare reduce . 81)) 
    (($:end reduce . 353)) ((#{$:;}# reduce . 354) ($:, reduce . 354) (
    $:constrainedby reduce . 354) (#{$:\x29;}# reduce . 354) ($:stream reduce 
    . 354) ($:flow reduce . 354) ($:constant reduce . 354) ($:parameter reduce
    . 354) ($:discrete reduce . 354) ($:output reduce . 354) ($:input reduce 
    . 354)) (($:end reduce . 55)) ((#{$:;}# reduce . 74) ($:annotation reduce 
    . 74) ($:. reduce . 74) ($ident reduce . 74)) ((#{$:;}# shift . 329) 
    ($:annotation shift . 119) (annotation shift . 330) ($:. shift . 247) 
    (component-reference-2 shift . 248) ($ident shift . 26) (
    component-reference-1 shift . 249) (ident shift . 250) (
    component-reference shift . 251) (external-function-call shift . 331)) 
    (($ident shift . 26) (ident shift . 276) (component-reference-2 shift . 
    328)) (($::= reduce . 315) (#{$:\x28;}# reduce . 315) ($:. reduce . 315) 
    ($:= reduce . 315) ($:, reduce . 315) (#{$:\x29;}# reduce . 315)) (
    ($:. shift . 327) (#{$:\x28;}# reduce . 314) ($::= reduce . 314) ($:= 
    reduce . 314) ($:, reduce . 314) (#{$:\x29;}# reduce . 314)) ((#{$:\x28;}#
    shift . 326) (#{$:\x5b;}# shift . 137) (array-subscripts shift . 308) 
    ($:= reduce . 318) ($:. reduce . 318)) (($:= shift . 325)) ((#{$:;}# shift
    . 323) ($:annotation shift . 119) (annotation shift . 324)) ((#{$:;}# 
    shift . 322)) (($:annotation reduce . 73) ($:end reduce . 73)) (($:end 
    reduce . 54)) (($:annotation reduce . 59) ($:public reduce . 59) (
    $:protected reduce . 59) ($:initial reduce . 59) ($:algorithm reduce . 59)
    ($:equation reduce . 59) ($:external reduce . 59) ($:end reduce . 59)) 
    (($:annotation shift . 119) (annotation shift . 120) (opt-annotation shift
    . 321) ($:end reduce . 352)) (($:annotation reduce . 61) ($:equation 
    reduce . 61) ($:algorithm reduce . 61) ($:initial reduce . 61) (
    $:protected reduce . 61) ($:public reduce . 61) ($:external reduce . 61) 
    ($:end reduce . 61)) (($:annotation reduce . 63) ($:equation reduce . 63) 
    ($:algorithm reduce . 63) ($:initial reduce . 63) ($:protected reduce . 63
    ) ($:public reduce . 63) ($:external reduce . 63) ($:end reduce . 63)) 
    (($string shift . 50) ($float shift . 198) ($fixed shift . 199) (
    #{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 
    202) ($:der shift . 203) ($:true shift . 205) ($:false shift . 206) 
    (string shift . 207) (unsigned-number shift . 208) ($:- shift . 209) 
    ($:+ shift . 210) (primary shift . 211) (unary-expr shift . 212) (factor 
    shift . 213) (term shift . 214) (arithmetic-expression shift . 215) 
    ($:not shift . 216) (relation shift . 217) (logical-factor shift . 218) 
    ($ident shift . 26) (logical-term shift . 219) ($:. shift . 27) (ident 
    shift . 28) (logical-expression shift . 220) ($:connect shift . 262) 
    ($:when shift . 263) ($:for shift . 264) ($:if shift . 265) (name shift . 
    266) (when-equation shift . 267) (connect-clause shift . 268) (
    for-equation shift . 269) (if-equation shift . 270) (simple-expression 
    shift . 271) (equation-1 shift . 272) (equation shift . 273) (
    equation-list-1 shift . 274) (equation-list shift . 320) ($:annotation 
    reduce . 185) ($:public reduce . 185) ($:protected reduce . 185) (
    $:initial reduce . 185) ($:algorithm reduce . 185) ($:equation reduce . 
    185) ($:external reduce . 185) ($:end reduce . 185)) (($ident shift . 26) 
    (ident shift . 276) ($:. shift . 247) (component-reference-2 shift . 248) 
    (component-reference-1 shift . 249) ($:when shift . 277) ($:while shift . 
    278) ($:for shift . 279) ($:if shift . 280) (when-statement shift . 281) 
    (while-statement shift . 282) (for-statement shift . 283) (if-statement 
    shift . 284) ($:return shift . 285) ($:break shift . 286) (#{$:\x28;}# 
    shift . 287) (component-reference shift . 288) (statement-1 shift . 289) 
    (statement shift . 290) (statement-list shift . 319) ($:annotation reduce 
    . 189) ($:public reduce . 189) ($:protected reduce . 189) ($:initial 
    reduce . 189) ($:algorithm reduce . 189) ($:equation reduce . 189) 
    ($:external reduce . 189) ($:end reduce . 189)) ((#{$:\x28;}# shift . 318)
    ) (($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 317)) (($ident shift . 
    26) (ident shift . 303) (for-index shift . 304) (for-indices shift . 316))
    (($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 315)) (($:. shift . 60)
    (#{$:\x28;}# shift . 297) (function-call-args shift . 313) (#{$:\x5b;}# 
    shift . 137) (array-subscripts shift . 314) ($:: reduce . 304) ($:= reduce
    . 304) ($:or reduce . 304) ($:and reduce . 304) ($:< reduce . 304) 
    ($:<= reduce . 304) ($:> reduce . 304) ($:>= reduce . 304) ($:== reduce . 
    304) ($:<> reduce . 304) ($:.- reduce . 304) ($:.+ reduce . 304) ($:- 
    reduce . 304) ($:+ reduce . 304) ($:* reduce . 304) ($:/ reduce . 304) 
    ($:.* reduce . 304) ($:./ reduce . 304) ($:.^ reduce . 304) ($:^ reduce . 
    304)) ((#{$:;}# reduce . 199) ($string reduce . 199) ($:annotation reduce 
    . 199)) ((#{$:;}# reduce . 198) ($string reduce . 198) ($:annotation 
    reduce . 198)) ((#{$:;}# reduce . 197) ($string reduce . 197) (
    $:annotation reduce . 197)) ((#{$:;}# reduce . 196) ($string reduce . 196)
    ($:annotation reduce . 196)) (($:= shift . 312)) (($string shift . 50) 
    (string shift . 51) (string-cat-1 shift . 52) (string-cat shift . 53) 
    (string-comment shift . 193) (comment shift . 311) (#{$:;}# reduce . 347) 
    ($:annotation reduce . 347)) ((#{$:;}# shift . 310)) (($string shift . 50)
    ($float shift . 198) ($fixed shift . 199) (#{$:\x7b;}# shift . 200) 
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    ($:true shift . 205) ($:false shift . 206) (string shift . 207) (
    unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary 
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) ($:not shift . 216) (relation 
    shift . 217) (logical-factor shift . 218) ($ident shift . 26) (
    logical-term shift . 219) ($:. shift . 27) (ident shift . 28) (
    logical-expression shift . 220) ($:connect shift . 262) ($:when shift . 
    263) ($:for shift . 264) ($:if shift . 265) (name shift . 266) (
    when-equation shift . 267) (connect-clause shift . 268) (for-equation 
    shift . 269) (if-equation shift . 270) (simple-expression shift . 271) 
    (equation-1 shift . 272) (equation shift . 309) ($:end reduce . 191) 
    ($:annotation reduce . 191) ($:public reduce . 191) ($:protected reduce . 
    191) ($:initial reduce . 191) ($:algorithm reduce . 191) ($:equation 
    reduce . 191) ($:external reduce . 191) ($:elseif reduce . 191) ($:else 
    reduce . 191) ($:elsewhen reduce . 191)) (($:annotation reduce . 184) 
    ($:public reduce . 184) ($:protected reduce . 184) ($:initial reduce . 184
    ) ($:algorithm reduce . 184) ($:equation reduce . 184) ($:external reduce 
    . 184) ($:end reduce . 184)) ((#{$:\x5b;}# shift . 137) (array-subscripts 
    shift . 308) (#{$:\x28;}# reduce . 318) ($::= reduce . 318) ($:. reduce . 
    318) ($:, reduce . 318) (#{$:\x29;}# reduce . 318) ($:= reduce . 318)) 
    (($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 307)) (($ident shift . 
    26) ($string shift . 50) ($float shift . 198) ($fixed shift . 199) 
    ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}#
    shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 
    204) ($:true shift . 205) ($:false shift . 206) (string shift . 207) 
    (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) ($:not shift . 216) (relation 
    shift . 217) (logical-factor shift . 218) (logical-term shift . 219) 
    (logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 306)) (($ident shift . 26) (ident shift 
    . 303) (for-index shift . 304) (for-indices shift . 305)) (($ident shift 
    . 26) ($string shift . 50) ($float shift . 198) ($fixed shift . 199) 
    ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}#
    shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 
    204) ($:true shift . 205) ($:false shift . 206) (string shift . 207) 
    (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) ($:not shift . 216) (relation 
    shift . 217) (logical-factor shift . 218) (logical-term shift . 219) 
    (logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 302)) ((#{$:;}# reduce . 212) ($string 
    reduce . 212) ($:annotation reduce . 212)) ((#{$:;}# reduce . 211) 
    ($string reduce . 211) ($:annotation reduce . 211)) ((#{$:;}# reduce . 210
    ) ($string reduce . 210) ($:annotation reduce . 210)) ((#{$:;}# reduce . 
    209) ($string reduce . 209) ($:annotation reduce . 209)) ((#{$:;}# reduce 
    . 208) ($string reduce . 208) ($:annotation reduce . 208)) ((#{$:;}# 
    reduce . 207) ($string reduce . 207) ($:annotation reduce . 207)) (
    ($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 299) ($:, shift . 300) 
    (output-expression-list shift . 301)) (($::= shift . 296) (#{$:\x28;}# 
    shift . 297) (function-call-args shift . 298)) (($string shift . 50) 
    (string shift . 51) (string-cat-1 shift . 52) (string-cat shift . 53) 
    (string-comment shift . 193) (comment shift . 295) (#{$:;}# reduce . 347) 
    ($:annotation reduce . 347)) ((#{$:;}# shift . 294)) (($ident shift . 26) 
    (ident shift . 276) ($:. shift . 247) (component-reference-2 shift . 248) 
    (component-reference-1 shift . 249) ($:when shift . 277) ($:while shift . 
    278) ($:for shift . 279) ($:if shift . 280) (when-statement shift . 281) 
    (while-statement shift . 282) (for-statement shift . 283) (if-statement 
    shift . 284) ($:return shift . 285) ($:break shift . 286) (#{$:\x28;}# 
    shift . 287) (component-reference shift . 288) (statement-1 shift . 289) 
    (statement shift . 293) ($:annotation reduce . 188) ($:public reduce . 188
    ) ($:protected reduce . 188) ($:initial reduce . 188) ($:algorithm reduce 
    . 188) ($:equation reduce . 188) ($:external reduce . 188) ($:end reduce 
    . 188)) ((#{$:;}# reduce . 33) ($:constrainedby reduce . 33)) ((#{$:;}# 
    shift . 480)) (($ident reduce . 201) ($:. reduce . 201) ($:if reduce . 201
    ) ($:for reduce . 201) ($:while reduce . 201) ($:when reduce . 201) 
    ($:return reduce . 201) ($:break reduce . 201) (#{$:\x28;}# reduce . 201) 
    ($:end reduce . 201) ($:annotation reduce . 201) ($:public reduce . 201) 
    ($:protected reduce . 201) ($:initial reduce . 201) ($:algorithm reduce . 
    201) ($:equation reduce . 201) ($:external reduce . 201) ($:elseif reduce 
    . 201) ($:else reduce . 201) ($:elsewhen reduce . 201)) ((#{$:;}# reduce 
    . 203)) (($ident shift . 26) ($string shift . 50) ($float shift . 198) 
    ($fixed shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# 
    shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der 
    shift . 203) (name shift . 204) ($:true shift . 205) ($:false shift . 206)
    (string shift . 207) (unsigned-number shift . 208) ($:- shift . 209) 
    ($:+ shift . 210) (primary shift . 211) (unary-expr shift . 212) (factor 
    shift . 213) (term shift . 214) (arithmetic-expression shift . 215) 
    ($:not shift . 216) (relation shift . 217) (logical-factor shift . 218) 
    (logical-term shift . 219) (logical-expression shift . 220) ($:if shift . 
    221) (simple-expression shift . 222) (expression shift . 479)) (($string 
    shift . 50) ($float shift . 198) ($fixed shift . 199) ($:. shift . 27) 
    (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 
    202) ($:der shift . 203) (name shift . 204) ($:true shift . 205) ($:false 
    shift . 206) (string shift . 207) (unsigned-number shift . 208) ($:- shift
    . 209) ($:+ shift . 210) (primary shift . 211) (unary-expr shift . 212) 
    (factor shift . 213) (term shift . 214) (arithmetic-expression shift . 215
    ) ($:not shift . 216) (relation shift . 217) (logical-factor shift . 218) 
    (logical-term shift . 219) (logical-expression shift . 220) ($ident shift 
    . 26) ($:if shift . 221) (simple-expression shift . 222) (expression shift
    . 378) ($:function shift . 379) (ident shift . 380) (named-argument shift 
    . 381) (function-argument shift . 382) (named-only-arguments-1 shift . 383
    ) (function-arguments-1 shift . 384) (function-arguments shift . 477) 
    (#{$:\x29;}# shift . 478)) ((#{$:;}# reduce . 205) ($string reduce . 205) 
    ($:annotation reduce . 205)) ((#{$:\x29;}# reduce . 335) ($:, reduce . 335
    )) ((#{$:\x29;}# reduce . 334) ($:, reduce . 334)) ((#{$:\x29;}# shift . 
    476) ($:, shift . 438)) (($:then shift . 470) (then-st-part shift . 475)) 
    (($:in shift . 474) ($:loop reduce . 244) ($:, reduce . 244)) (($:loop 
    reduce . 241) ($:, reduce . 241)) (($:, shift . 465) ($:loop shift . 473))
    (($:loop shift . 472)) (($:then shift . 470) (then-st-part shift . 471)) 
    (($:= reduce . 319) ($:. reduce . 319) (#{$:\x28;}# reduce . 319) ($::= 
    reduce . 319) ($:, reduce . 319) (#{$:\x29;}# reduce . 319)) ((#{$:;}# 
    shift . 469)) (($float reduce . 192) ($fixed reduce . 192) ($string reduce
    . 192) (#{$:\x7b;}# reduce . 192) (#{$:\x5b;}# reduce . 192) (#{$:\x28;}# 
    reduce . 192) ($:der reduce . 192) ($:true reduce . 192) ($:false reduce 
    . 192) ($:- reduce . 192) ($:+ reduce . 192) ($:not reduce . 192) ($:if 
    reduce . 192) ($:for reduce . 192) ($:connect reduce . 192) ($:when reduce
    . 192) ($ident reduce . 192) ($:. reduce . 192) ($:end reduce . 192) 
    ($:annotation reduce . 192) ($:public reduce . 192) ($:protected reduce . 
    192) ($:initial reduce . 192) ($:algorithm reduce . 192) ($:equation 
    reduce . 192) ($:external reduce . 192) ($:elseif reduce . 192) ($:else 
    reduce . 192) ($:elsewhen reduce . 192)) ((#{$:;}# reduce . 194)) (
    ($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 468)) (($:: reduce . 
    302) ($:= reduce . 302) ($:or reduce . 302) ($:and reduce . 302) ($:< 
    reduce . 302) ($:<= reduce . 302) ($:> reduce . 302) ($:>= reduce . 302) 
    ($:== reduce . 302) ($:<> reduce . 302) ($:.- reduce . 302) ($:.+ reduce 
    . 302) ($:- reduce . 302) ($:+ reduce . 302) ($:* reduce . 302) ($:/ 
    reduce . 302) ($:.* reduce . 302) ($:./ reduce . 302) ($:.^ reduce . 302) 
    ($:^ reduce . 302) (#{$:;}# reduce . 200) ($string reduce . 200) (
    $:annotation reduce . 200)) (($:: reduce . 305) (#{$:\x5d;}# reduce . 305)
    ($:, reduce . 305) ($:or reduce . 305) ($:and reduce . 305) ($:< reduce . 
    305) ($:<= reduce . 305) ($:> reduce . 305) ($:>= reduce . 305) ($:== 
    reduce . 305) ($:<> reduce . 305) ($:.- reduce . 305) ($:.+ reduce . 305) 
    ($:- reduce . 305) ($:+ reduce . 305) ($:* reduce . 305) ($:/ reduce . 305
    ) ($:.* reduce . 305) ($:./ reduce . 305) ($:.^ reduce . 305) ($:^ reduce 
    . 305) (#{$:\x7d;}# reduce . 305) (#{$:;}# reduce . 305) (#{$:\x29;}# 
    reduce . 305) ($:then reduce . 305) ($:loop reduce . 305) ($:else reduce 
    . 305) ($:elseif reduce . 305) ($string reduce . 305) ($:annotation reduce
    . 305) ($:constrainedby reduce . 305) ($:= reduce . 305) ($:end reduce . 
    305) ($:elsewhen reduce . 305) ($:if reduce . 305)) (($:then shift . 463) 
    (then-eq-part shift . 467)) (($:, shift . 465) ($:loop shift . 466)) 
    (($:then shift . 463) (then-eq-part shift . 464)) (($ident shift . 26) 
    (ident shift . 276) ($:. shift . 247) (component-reference-2 shift . 248) 
    (component-reference-1 shift . 249) (component-reference shift . 462)) 
    (($ident shift . 26) (ident shift . 276) ($:. shift . 247) (
    component-reference-2 shift . 248) (component-reference-1 shift . 249) 
    ($:when shift . 277) ($:while shift . 278) ($:for shift . 279) ($:if shift
    . 280) (when-statement shift . 281) (while-statement shift . 282) (
    for-statement shift . 283) (if-statement shift . 284) ($:return shift . 
    285) ($:break shift . 286) (#{$:\x28;}# shift . 287) (component-reference 
    shift . 288) (statement-1 shift . 289) (statement shift . 293) (
    $:annotation reduce . 187) ($:public reduce . 187) ($:protected reduce . 
    187) ($:initial reduce . 187) ($:algorithm reduce . 187) ($:equation 
    reduce . 187) ($:external reduce . 187) ($:end reduce . 187)) ((
    $:annotation reduce . 183) ($:public reduce . 183) ($:protected reduce . 
    183) ($:initial reduce . 183) ($:algorithm reduce . 183) ($:equation 
    reduce . 183) ($:external reduce . 183) ($:end reduce . 183)) (($:end 
    reduce . 53)) (($:annotation reduce . 72) ($:end reduce . 72)) ((
    $:annotation reduce . 71) ($:end reduce . 71)) ((#{$:;}# shift . 461)) 
    (($ident shift . 26) (ident shift . 460)) ((#{$:\x29;}# shift . 458) 
    ($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 374) (expression-list-1
    shift . 375) (expression-list shift . 459)) (($ident shift . 26) (ident 
    shift . 276) (component-reference-2 shift . 457)) (($::= reduce . 316) 
    (#{$:\x28;}# reduce . 316) ($:. reduce . 316) ($:= reduce . 316) ($:, 
    reduce . 316) (#{$:\x29;}# reduce . 316)) (($:annotation reduce . 70) 
    ($:end reduce . 70)) ((#{$:;}# shift . 456)) (($:annotation shift . 119) 
    (annotation shift . 454) (#{$:;}# shift . 455)) (($:function reduce . 94) 
    ($:pure reduce . 94) ($:impure reduce . 94) ($:package reduce . 94) 
    ($:type reduce . 94) ($:connector reduce . 94) ($:expandable reduce . 94) 
    ($:block reduce . 94) ($:record reduce . 94) ($:operator reduce . 94) 
    ($:model reduce . 94) ($:class reduce . 94) ($:partial reduce . 94) 
    ($:encapsulated reduce . 94) ($:stream reduce . 94) ($:flow reduce . 94) 
    ($:constant reduce . 94) ($:parameter reduce . 94) ($:discrete reduce . 94
    ) ($:output reduce . 94) ($:input reduce . 94) ($ident reduce . 94) 
    ($:. reduce . 94) ($:replaceable reduce . 94)) (($ident shift . 26) 
    ($:. shift . 27) (ident shift . 28) ($:output shift . 74) ($:input shift 
    . 75) ($:constant shift . 76) ($:parameter shift . 77) ($:discrete shift 
    . 78) ($:stream shift . 79) ($:flow shift . 80) ($:function shift . 1) 
    ($:pure shift . 2) ($:impure shift . 3) ($:package shift . 4) ($:type 
    shift . 5) ($:connector shift . 6) ($:expandable shift . 7) ($:block shift
    . 8) ($:record shift . 9) ($:operator shift . 10) ($:model shift . 11) 
    ($:class shift . 12) (name shift . 81) (type-prefix-3 shift . 82) (
    type-prefix-2 shift . 83) (type-prefix-1 shift . 84) (class-prefixes-1 
    shift . 13) ($:partial shift . 14) (type-specifier shift . 85) (
    type-prefix shift . 86) (class-prefixes shift . 15) ($:encapsulated shift 
    . 16) (component-clause shift . 87) (class-definition shift . 88) (
    $:replaceable shift . 91) (element-2 shift . 92) (element-1 shift . 453)) 
    ((#{$:;}# reduce . 85)) ((#{$:;}# reduce . 102)) (($:. shift . 60) 
    (#{$:\x28;}# shift . 67) (class-modification shift . 452) ($string reduce 
    . 120) ($:annotation reduce . 120) (#{$:;}# reduce . 120) (#{$:\x29;}# 
    reduce . 120) ($:, reduce . 120)) ((#{$:\x7d;}# shift . 449) ($ident shift
    . 26) (ident shift . 450) (import-list shift . 451)) (($string reduce . 
    110) ($:annotation reduce . 110) (#{$:;}# reduce . 110)) (($string reduce 
    . 108) ($:annotation reduce . 108) (#{$:;}# reduce . 108)) (($:. shift . 
    60) ($string reduce . 107) ($:annotation reduce . 107) (#{$:;}# reduce . 
    107)) ((#{$:;}# reduce . 115)) ((#{$:;}# reduce . 121) ($:constrainedby 
    reduce . 121)) (($ident reduce . 340) ($:= reduce . 340) ($::= reduce . 
    340) (#{$:\x28;}# reduce . 340) ($:annotation reduce . 340) ($string 
    reduce . 340) ($:if reduce . 340) ($:, reduce . 340) (#{$:;}# reduce . 340
    ) ($:constrainedby reduce . 340) ($:: reduce . 340) (#{$:\x5d;}# reduce . 
    340) ($:or reduce . 340) ($:and reduce . 340) ($:< reduce . 340) ($:<= 
    reduce . 340) ($:> reduce . 340) ($:>= reduce . 340) ($:== reduce . 340) 
    ($:<> reduce . 340) ($:.- reduce . 340) ($:.+ reduce . 340) ($:- reduce . 
    340) ($:+ reduce . 340) ($:* reduce . 340) ($:/ reduce . 340) ($:.* reduce
    . 340) ($:./ reduce . 340) ($:.^ reduce . 340) ($:^ reduce . 340) (
    #{$:\x7d;}# reduce . 340) (#{$:\x29;}# reduce . 340) ($:then reduce . 340)
    ($:loop reduce . 340) ($:else reduce . 340) ($:elseif reduce . 340) 
    ($:. reduce . 340) ($:stream reduce . 340) ($:flow reduce . 340) (
    $:constant reduce . 340) ($:parameter reduce . 340) ($:discrete reduce . 
    340) ($:output reduce . 340) ($:input reduce . 340) ($:end reduce . 340) 
    ($:elsewhen reduce . 340)) (($ident shift . 26) ($string shift . 50) 
    ($float shift . 198) ($fixed shift . 199) ($:. shift . 27) (ident shift . 
    28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift
    . 202) ($:der shift . 203) (name shift . 204) ($:true shift . 205) 
    ($:false shift . 206) (string shift . 207) (unsigned-number shift . 208) 
    ($:- shift . 209) ($:+ shift . 210) (primary shift . 211) (unary-expr 
    shift . 212) (factor shift . 213) (term shift . 214) (
    arithmetic-expression shift . 215) ($:not shift . 216) (relation shift . 
    217) (logical-factor shift . 218) (logical-term shift . 219) (
    logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 223) ($:: shift . 224) (subscript shift 
    . 448)) (($:then shift . 447)) (($ident shift . 26) ($string shift . 50) 
    ($float shift . 198) ($fixed shift . 199) ($:. shift . 27) (ident shift . 
    28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift
    . 202) ($:der shift . 203) (name shift . 204) ($:true shift . 205) 
    ($:false shift . 206) (string shift . 207) (unsigned-number shift . 208) 
    ($:- shift . 209) ($:+ shift . 210) (primary shift . 211) (unary-expr 
    shift . 212) (factor shift . 213) (term shift . 214) (
    arithmetic-expression shift . 215) ($:not shift . 216) (relation shift . 
    217) (logical-factor shift . 218) (logical-term shift . 219) (
    logical-expression shift . 446)) (($ident shift . 26) ($string shift . 50)
    ($float shift . 198) ($fixed shift . 199) ($:. shift . 27) (ident shift . 
    28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift
    . 202) ($:der shift . 203) (name shift . 204) ($:true shift . 205) 
    ($:false shift . 206) (string shift . 207) (unsigned-number shift . 208) 
    ($:- shift . 209) ($:+ shift . 210) (primary shift . 211) (unary-expr 
    shift . 212) (factor shift . 213) (term shift . 214) (
    arithmetic-expression shift . 215) ($:not shift . 216) (relation shift . 
    217) (logical-factor shift . 218) (logical-term shift . 445)) (($ident 
    shift . 26) ($string shift . 50) ($float shift . 198) ($fixed shift . 199)
    ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}#
    shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 
    204) ($:true shift . 205) ($:false shift . 206) (string shift . 207) 
    (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) ($:not shift . 216) (relation 
    shift . 217) (logical-factor shift . 444)) (($float reduce . 279) ($fixed 
    reduce . 279) ($string reduce . 279) ($ident reduce . 279) ($:. reduce . 
    279) (#{$:\x7b;}# reduce . 279) (#{$:\x5b;}# reduce . 279) (#{$:\x28;}# 
    reduce . 279) ($:der reduce . 279) ($:true reduce . 279) ($:false reduce 
    . 279) ($:- reduce . 279) ($:+ reduce . 279)) (($float reduce . 278) 
    ($fixed reduce . 278) ($string reduce . 278) ($ident reduce . 278) 
    ($:. reduce . 278) (#{$:\x7b;}# reduce . 278) (#{$:\x5b;}# reduce . 278) 
    (#{$:\x28;}# reduce . 278) ($:der reduce . 278) ($:true reduce . 278) 
    ($:false reduce . 278) ($:- reduce . 278) ($:+ reduce . 278)) (($float 
    reduce . 277) ($fixed reduce . 277) ($string reduce . 277) ($ident reduce 
    . 277) ($:. reduce . 277) (#{$:\x7b;}# reduce . 277) (#{$:\x5b;}# reduce 
    . 277) (#{$:\x28;}# reduce . 277) ($:der reduce . 277) ($:true reduce . 
    277) ($:false reduce . 277) ($:- reduce . 277) ($:+ reduce . 277)) 
    (($float reduce . 276) ($fixed reduce . 276) ($string reduce . 276) 
    ($ident reduce . 276) ($:. reduce . 276) (#{$:\x7b;}# reduce . 276) 
    (#{$:\x5b;}# reduce . 276) (#{$:\x28;}# reduce . 276) ($:der reduce . 276)
    ($:true reduce . 276) ($:false reduce . 276) ($:- reduce . 276) ($:+ 
    reduce . 276)) (($float reduce . 275) ($fixed reduce . 275) ($string 
    reduce . 275) ($ident reduce . 275) ($:. reduce . 275) (#{$:\x7b;}# reduce
    . 275) (#{$:\x5b;}# reduce . 275) (#{$:\x28;}# reduce . 275) ($:der reduce
    . 275) ($:true reduce . 275) ($:false reduce . 275) ($:- reduce . 275) 
    ($:+ reduce . 275)) (($float reduce . 274) ($fixed reduce . 274) ($string 
    reduce . 274) ($ident reduce . 274) ($:. reduce . 274) (#{$:\x7b;}# reduce
    . 274) (#{$:\x5b;}# reduce . 274) (#{$:\x28;}# reduce . 274) ($:der reduce
    . 274) ($:true reduce . 274) ($:false reduce . 274) ($:- reduce . 274) 
    ($:+ reduce . 274)) (($ident shift . 26) ($string shift . 50) ($float 
    shift . 198) ($fixed shift . 199) ($:. shift . 27) (ident shift . 28) 
    (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 
    202) ($:der shift . 203) (name shift . 204) ($:true shift . 205) ($:false 
    shift . 206) (string shift . 207) (unsigned-number shift . 208) ($:- shift
    . 209) ($:+ shift . 210) (primary shift . 211) (unary-expr shift . 212) 
    (factor shift . 213) (term shift . 214) (arithmetic-expression shift . 443
    )) (($:<> shift . 349) ($:== shift . 350) ($:>= shift . 351) ($:> shift . 
    352) ($:<= shift . 353) ($:< shift . 354) (rel-op shift . 355) ($:: reduce
    . 271) ($:= reduce . 271) ($:or reduce . 271) ($:and reduce . 271) 
    (#{$:\x5d;}# reduce . 271) ($:, reduce . 271) (#{$:\x7d;}# reduce . 271) 
    (#{$:;}# reduce . 271) (#{$:\x29;}# reduce . 271) ($:then reduce . 271) 
    ($:loop reduce . 271) ($:else reduce . 271) ($:elseif reduce . 271) 
    ($string reduce . 271) ($:annotation reduce . 271) ($:constrainedby reduce
    . 271) ($:end reduce . 271) ($:elsewhen reduce . 271) ($:if reduce . 271))
    (($float reduce . 285) ($fixed reduce . 285) ($string reduce . 285) 
    ($ident reduce . 285) ($:. reduce . 285) (#{$:\x7b;}# reduce . 285) 
    (#{$:\x5b;}# reduce . 285) (#{$:\x28;}# reduce . 285) ($:der reduce . 285)
    ($:true reduce . 285) ($:false reduce . 285) ($:- reduce . 285) ($:+ 
    reduce . 285)) (($float reduce . 284) ($fixed reduce . 284) ($string 
    reduce . 284) ($ident reduce . 284) ($:. reduce . 284) (#{$:\x7b;}# reduce
    . 284) (#{$:\x5b;}# reduce . 284) (#{$:\x28;}# reduce . 284) ($:der reduce
    . 284) ($:true reduce . 284) ($:false reduce . 284) ($:- reduce . 284) 
    ($:+ reduce . 284)) (($float reduce . 283) ($fixed reduce . 283) ($string 
    reduce . 283) ($ident reduce . 283) ($:. reduce . 283) (#{$:\x7b;}# reduce
    . 283) (#{$:\x5b;}# reduce . 283) (#{$:\x28;}# reduce . 283) ($:der reduce
    . 283) ($:true reduce . 283) ($:false reduce . 283) ($:- reduce . 283) 
    ($:+ reduce . 283)) (($float reduce . 282) ($fixed reduce . 282) ($string 
    reduce . 282) ($ident reduce . 282) ($:. reduce . 282) (#{$:\x7b;}# reduce
    . 282) (#{$:\x5b;}# reduce . 282) (#{$:\x28;}# reduce . 282) ($:der reduce
    . 282) ($:true reduce . 282) ($:false reduce . 282) ($:- reduce . 282) 
    ($:+ reduce . 282)) (($ident shift . 26) ($string shift . 50) ($float 
    shift . 198) ($fixed shift . 199) ($:. shift . 27) (ident shift . 28) 
    (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 
    202) ($:der shift . 203) (name shift . 204) ($:true shift . 205) ($:false 
    shift . 206) (string shift . 207) (unsigned-number shift . 208) ($:- shift
    . 209) ($:+ shift . 210) (primary shift . 211) (unary-expr shift . 212) 
    (factor shift . 213) (term shift . 442)) (($float reduce . 291) ($fixed 
    reduce . 291) ($string reduce . 291) ($ident reduce . 291) ($:. reduce . 
    291) (#{$:\x7b;}# reduce . 291) (#{$:\x5b;}# reduce . 291) (#{$:\x28;}# 
    reduce . 291) ($:der reduce . 291) ($:true reduce . 291) ($:false reduce 
    . 291) ($:- reduce . 291) ($:+ reduce . 291)) (($float reduce . 290) 
    ($fixed reduce . 290) ($string reduce . 290) ($ident reduce . 290) 
    ($:. reduce . 290) (#{$:\x7b;}# reduce . 290) (#{$:\x5b;}# reduce . 290) 
    (#{$:\x28;}# reduce . 290) ($:der reduce . 290) ($:true reduce . 290) 
    ($:false reduce . 290) ($:- reduce . 290) ($:+ reduce . 290)) (($float 
    reduce . 289) ($fixed reduce . 289) ($string reduce . 289) ($ident reduce 
    . 289) ($:. reduce . 289) (#{$:\x7b;}# reduce . 289) (#{$:\x5b;}# reduce 
    . 289) (#{$:\x28;}# reduce . 289) ($:der reduce . 289) ($:true reduce . 
    289) ($:false reduce . 289) ($:- reduce . 289) ($:+ reduce . 289)) 
    (($float reduce . 288) ($fixed reduce . 288) ($string reduce . 288) 
    ($ident reduce . 288) ($:. reduce . 288) (#{$:\x7b;}# reduce . 288) 
    (#{$:\x5b;}# reduce . 288) (#{$:\x28;}# reduce . 288) ($:der reduce . 288)
    ($:true reduce . 288) ($:false reduce . 288) ($:- reduce . 288) ($:+ 
    reduce . 288)) (($ident shift . 26) ($string shift . 50) ($float shift . 
    198) ($fixed shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}#
    shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der 
    shift . 203) (name shift . 204) ($:true shift . 205) ($:false shift . 206)
    (string shift . 207) (unsigned-number shift . 208) ($:- shift . 209) 
    ($:+ shift . 210) (primary shift . 211) (unary-expr shift . 212) (factor 
    shift . 441)) (($ident shift . 26) ($string shift . 50) ($float shift . 
    198) ($fixed shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}#
    shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der 
    shift . 203) (name shift . 204) ($:true shift . 205) ($:false shift . 206)
    (string shift . 207) (unsigned-number shift . 208) ($:- shift . 209) 
    ($:+ shift . 210) (primary shift . 211) (unary-expr shift . 440)) (
    ($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 439)) (($:= reduce . 296) 
    ($:: reduce . 296) ($:^ reduce . 296) ($:.^ reduce . 296) ($:./ reduce . 
    296) ($:.* reduce . 296) ($:/ reduce . 296) ($:* reduce . 296) ($:+ reduce
    . 296) ($:- reduce . 296) ($:.+ reduce . 296) ($:.- reduce . 296) ($:<> 
    reduce . 296) ($:== reduce . 296) ($:>= reduce . 296) ($:> reduce . 296) 
    ($:<= reduce . 296) ($:< reduce . 296) ($:and reduce . 296) ($:or reduce 
    . 296) (#{$:\x5d;}# reduce . 296) ($:, reduce . 296) (#{$:\x7d;}# reduce 
    . 296) (#{$:;}# reduce . 296) (#{$:\x29;}# reduce . 296) ($:then reduce . 
    296) ($:loop reduce . 296) ($:else reduce . 296) ($:elseif reduce . 296) 
    ($string reduce . 296) ($:annotation reduce . 296) ($:constrainedby reduce
    . 296) ($:end reduce . 296) ($:elsewhen reduce . 296) ($:if reduce . 296))
    (($:= reduce . 297) ($:: reduce . 297) ($:^ reduce . 297) ($:.^ reduce . 
    297) ($:./ reduce . 297) ($:.* reduce . 297) ($:/ reduce . 297) ($:* 
    reduce . 297) ($:+ reduce . 297) ($:- reduce . 297) ($:.+ reduce . 297) 
    ($:.- reduce . 297) ($:<> reduce . 297) ($:== reduce . 297) ($:>= reduce 
    . 297) ($:> reduce . 297) ($:<= reduce . 297) ($:< reduce . 297) ($:and 
    reduce . 297) ($:or reduce . 297) (#{$:\x5d;}# reduce . 297) ($:, reduce 
    . 297) (#{$:\x7d;}# reduce . 297) (#{$:;}# reduce . 297) (#{$:\x29;}# 
    reduce . 297) ($:then reduce . 297) ($:loop reduce . 297) ($:else reduce 
    . 297) ($:elseif reduce . 297) ($string reduce . 297) ($:annotation reduce
    . 297) ($:constrainedby reduce . 297) ($:end reduce . 297) ($:elsewhen 
    reduce . 297) ($:if reduce . 297)) (($:: reduce . 302) (#{$:\x5d;}# reduce
    . 302) ($:, reduce . 302) ($:or reduce . 302) ($:and reduce . 302) 
    ($:< reduce . 302) ($:<= reduce . 302) ($:> reduce . 302) ($:>= reduce . 
    302) ($:== reduce . 302) ($:<> reduce . 302) ($:.- reduce . 302) ($:.+ 
    reduce . 302) ($:- reduce . 302) ($:+ reduce . 302) ($:* reduce . 302) 
    ($:/ reduce . 302) ($:.* reduce . 302) ($:./ reduce . 302) ($:.^ reduce . 
    302) ($:^ reduce . 302) (#{$:\x7d;}# reduce . 302) (#{$:;}# reduce . 302) 
    (#{$:\x29;}# reduce . 302) ($:then reduce . 302) ($:loop reduce . 302) 
    ($:else reduce . 302) ($:elseif reduce . 302) ($string reduce . 302) 
    ($:annotation reduce . 302) ($:constrainedby reduce . 302) ($:= reduce . 
    302) ($:end reduce . 302) ($:elsewhen reduce . 302) ($:if reduce . 302)) 
    (($:: reduce . 303) ($:= reduce . 303) ($:or reduce . 303) ($:and reduce 
    . 303) ($:< reduce . 303) ($:<= reduce . 303) ($:> reduce . 303) ($:>= 
    reduce . 303) ($:== reduce . 303) ($:<> reduce . 303) ($:.- reduce . 303) 
    ($:.+ reduce . 303) ($:- reduce . 303) ($:+ reduce . 303) ($:* reduce . 
    303) ($:/ reduce . 303) ($:.* reduce . 303) ($:./ reduce . 303) ($:.^ 
    reduce . 303) ($:^ reduce . 303) (#{$:\x5d;}# reduce . 303) ($:, reduce . 
    303) (#{$:\x7d;}# reduce . 303) (#{$:;}# reduce . 303) (#{$:\x29;}# reduce
    . 303) ($:then reduce . 303) ($:loop reduce . 303) ($:else reduce . 303) 
    ($:elseif reduce . 303) ($string reduce . 303) ($:annotation reduce . 303)
    ($:constrainedby reduce . 303) ($:end reduce . 303) ($:elsewhen reduce . 
    303) ($:if reduce . 303)) ((#{$:\x29;}# shift . 437) ($:, shift . 438)) 
    ((#{$:\x5d;}# reduce . 338) (#{$:;}# reduce . 338) ($:, reduce . 338) 
    (#{$:\x29;}# reduce . 338) ($:end reduce . 338) ($:elsewhen reduce . 338))
    (($:, shift . 436) (#{$:\x5d;}# reduce . 337) (#{$:;}# reduce . 337) 
    (#{$:\x29;}# reduce . 337) ($:end reduce . 337) ($:elsewhen reduce . 337))
    ((#{$:\x5d;}# reduce . 309) (#{$:;}# reduce . 309)) ((#{$:\x5d;}# shift . 
    434) (#{$:;}# shift . 435)) ((#{$:\x7d;}# reduce . 333) ($:, reduce . 333)
    (#{$:\x29;}# reduce . 333)) (($ident shift . 26) ($:. shift . 27) (ident 
    shift . 28) (name shift . 433)) (($:= shift . 432) (#{$:\x5b;}# reduce . 
    311) (#{$:\x7d;}# reduce . 311) ($:: reduce . 311) (#{$:\x28;}# reduce . 
    311) ($:. reduce . 311) ($:^ reduce . 311) ($:.^ reduce . 311) ($:./ 
    reduce . 311) ($:.* reduce . 311) ($:/ reduce . 311) ($:* reduce . 311) 
    ($:+ reduce . 311) ($:- reduce . 311) ($:.+ reduce . 311) ($:.- reduce . 
    311) ($:<> reduce . 311) ($:== reduce . 311) ($:>= reduce . 311) ($:> 
    reduce . 311) ($:<= reduce . 311) ($:< reduce . 311) ($:and reduce . 311) 
    ($:or reduce . 311) ($:, reduce . 311) (#{$:\x29;}# reduce . 311)) 
    ((#{$:\x7d;}# reduce . 327) ($:, reduce . 327) (#{$:\x29;}# reduce . 327))
    ((#{$:\x7d;}# reduce . 324) ($:, reduce . 324) (#{$:\x29;}# reduce . 324))
    (($:, shift . 431) (#{$:\x7d;}# reduce . 323) (#{$:\x29;}# reduce . 323)) 
    (($:, shift . 430) (#{$:\x7d;}# reduce . 322) (#{$:\x29;}# reduce . 322)) 
    ((#{$:\x7d;}# shift . 429)) (($string reduce . 150) ($:annotation reduce 
    . 150) ($:if reduce . 150) ($:, reduce . 150) (#{$:;}# reduce . 150) 
    ($:constrainedby reduce . 150) (#{$:\x29;}# reduce . 150)) (($string 
    reduce . 146) ($:annotation reduce . 146) ($:if reduce . 146) ($:, reduce 
    . 146) (#{$:;}# reduce . 146) ($:constrainedby reduce . 146) (#{$:\x29;}# 
    reduce . 146)) ((#{$:;}# reduce . 345) ($:, reduce . 345) ($:constrainedby
    reduce . 345) (#{$:\x29;}# reduce . 345) ($:stream reduce . 345) ($:flow 
    reduce . 345) ($:constant reduce . 345) ($:parameter reduce . 345) 
    ($:discrete reduce . 345) ($:output reduce . 345) ($:input reduce . 345)) 
    (($:, reduce . 143) (#{$:;}# reduce . 143) ($:constrainedby reduce . 143))
    (($string reduce . 145) ($:annotation reduce . 145) ($:, reduce . 145) 
    (#{$:;}# reduce . 145) ($:constrainedby reduce . 145)) (($:, reduce . 142)
    (#{$:;}# reduce . 142) ($:constrainedby reduce . 142)) (($string reduce . 
    49) ($:annotation reduce . 49) (#{$:;}# reduce . 49) ($:constrainedby 
    reduce . 49) ($:stream reduce . 49) ($:flow reduce . 49) ($:constant 
    reduce . 49) ($:parameter reduce . 49) ($:discrete reduce . 49) ($:output 
    reduce . 49) ($:input reduce . 49) (#{$:\x29;}# reduce . 49) ($:, reduce 
    . 49)) (($string shift . 50) (string shift . 51) (string-cat-1 shift . 52)
    (string-cat shift . 53) (string-comment shift . 193) (comment shift . 428)
    (#{$:;}# reduce . 347) ($:constrainedby reduce . 347) ($:stream reduce . 
    347) ($:flow reduce . 347) ($:constant reduce . 347) ($:parameter reduce 
    . 347) ($:discrete reduce . 347) ($:output reduce . 347) ($:input reduce 
    . 347) (#{$:\x29;}# reduce . 347) ($:, reduce . 347) ($:annotation reduce 
    . 347)) (($string shift . 50) (string shift . 51) (string-cat-1 shift . 52
    ) (string-cat shift . 53) (string-comment shift . 193) (comment shift . 
    427) (#{$:;}# reduce . 347) ($:constrainedby reduce . 347) ($:stream 
    reduce . 347) ($:flow reduce . 347) ($:constant reduce . 347) ($:parameter
    reduce . 347) ($:discrete reduce . 347) ($:output reduce . 347) ($:input 
    reduce . 347) (#{$:\x29;}# reduce . 347) ($:, reduce . 347) ($:annotation 
    reduce . 347)) (($ident shift . 26) (ident shift . 184) (
    enumeration-literal shift . 426)) ((#{$:\x29;}# reduce . 52) ($:, reduce 
    . 52)) (($string shift . 50) (string shift . 51) (string-cat-1 shift . 52)
    (string-cat shift . 53) (string-comment shift . 193) (comment shift . 425)
    (#{$:;}# reduce . 347) ($:constrainedby reduce . 347) ($:stream reduce . 
    347) ($:flow reduce . 347) ($:constant reduce . 347) ($:parameter reduce 
    . 347) ($:discrete reduce . 347) ($:output reduce . 347) ($:input reduce 
    . 347) (#{$:\x29;}# reduce . 347) ($:, reduce . 347) ($:annotation reduce 
    . 347)) (($ident shift . 26) (ident shift . 422) (ident-list-1 shift . 423
    ) (der-class-specifier-1 shift . 424)) (($ident shift . 26) (ident shift 
    . 421)) (($ident shift . 26) ($:. shift . 27) (ident shift . 28) (name 
    shift . 81) (type-specifier shift . 420)) (($:constrainedby shift . 234) 
    (constraining-clause shift . 419) (#{$:\x29;}# reduce . 180) ($:, reduce 
    . 180)) (($:= shift . 418)) (($:stream reduce . 182) ($:flow reduce . 182)
    ($:constant reduce . 182) ($:parameter reduce . 182) ($:discrete reduce . 
    182) ($:output reduce . 182) ($:input reduce . 182) (#{$:\x29;}# reduce . 
    182) ($:, reduce . 182)) ((#{$:\x29;}# reduce . 168) ($:, reduce . 168)) 
    (($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 417)) (($string reduce 
    . 153) (#{$:\x29;}# reduce . 153) ($:, reduce . 153) ($:annotation reduce 
    . 153) ($:if reduce . 153) (#{$:;}# reduce . 153) ($:constrainedby reduce 
    . 153)) (($string reduce . 154) (#{$:\x29;}# reduce . 154) ($:, reduce . 
    154) ($:annotation reduce . 154) ($:if reduce . 154) (#{$:;}# reduce . 154
    ) ($:constrainedby reduce . 154)) (($:function reduce . 175) ($:pure 
    reduce . 175) ($:impure reduce . 175) ($:package reduce . 175) ($:type 
    reduce . 175) ($:connector reduce . 175) ($:expandable reduce . 175) 
    ($:block reduce . 175) ($:record reduce . 175) ($:operator reduce . 175) 
    ($:model reduce . 175) ($:class reduce . 175) ($:partial reduce . 175) 
    ($:stream reduce . 175) ($:flow reduce . 175) ($:constant reduce . 175) 
    ($:parameter reduce . 175) ($:discrete reduce . 175) ($:output reduce . 
    175) ($:input reduce . 175) ($:replaceable reduce . 175)) (($:output shift
    . 74) ($:input shift . 75) ($:constant shift . 76) ($:parameter shift . 77
    ) ($:discrete shift . 78) ($:stream shift . 79) ($:flow shift . 80) 
    ($:function shift . 1) ($:pure shift . 2) ($:impure shift . 3) ($:package 
    shift . 4) ($:type shift . 5) ($:connector shift . 6) ($:expandable shift 
    . 7) ($:block shift . 8) ($:record shift . 9) ($:operator shift . 10) 
    ($:model shift . 11) ($:class shift . 12) (type-prefix-3 shift . 82) 
    (type-prefix-2 shift . 83) (type-prefix-1 shift . 84) (class-prefixes-1 
    shift . 13) ($:partial shift . 14) (class-prefixes shift . 179) (
    type-prefix shift . 400) ($:replaceable shift . 151) (element-replaceable 
    shift . 413) (component-clause1 shift . 414) (short-class-definition shift
    . 415) (elt-redecl-1 shift . 416)) ((#{$:\x29;}# reduce . 162) ($:, reduce
    . 162)) ((#{$:\x29;}# reduce . 159) ($:, reduce . 159)) ((#{$:;}# reduce 
    . 35) ($:constrainedby reduce . 35)) ((#{$:\x29;}# reduce . 178) ($:, 
    reduce . 178)) ((#{$:\x29;}# reduce . 177) ($:, reduce . 177)) ((
    #{$:\x29;}# reduce . 176) ($:, reduce . 176)) ((#{$:\x29;}# reduce . 171) 
    ($:, reduce . 171)) (($string reduce . 151) (#{$:\x29;}# reduce . 151) 
    ($:, reduce . 151) ($:annotation reduce . 151) ($:if reduce . 151) 
    (#{$:;}# reduce . 151) ($:constrainedby reduce . 151)) (($:enumeration 
    shift . 70) ($:output shift . 71) ($:input shift . 72) (base-prefix shift 
    . 73) ($ident reduce . 43) ($:. reduce . 43)) ((#{$:\x29;}# reduce . 179) 
    ($:, reduce . 179)) (($ident shift . 26) (ident shift . 139) (declaration 
    shift . 530)) ((#{$:;}# reduce . 34) ($:constrainedby reduce . 34)) 
    ((#{$:\x29;}# reduce . 41) (#{$:;}# reduce . 41)) ((#{$:;}# shift . 529) 
    (#{$:\x29;}# reduce . 40)) ((#{$:\x29;}# shift . 528)) ((#{$:;}# reduce . 
    38) ($:constrainedby reduce . 38) ($:stream reduce . 38) ($:flow reduce . 
    38) ($:constant reduce . 38) ($:parameter reduce . 38) ($:discrete reduce 
    . 38) ($:output reduce . 38) ($:input reduce . 38) (#{$:\x29;}# reduce . 
    38) ($:, reduce . 38)) ((#{$:\x29;}# reduce . 51) ($:, reduce . 51)) 
    ((#{$:;}# reduce . 37) ($:constrainedby reduce . 37) ($:stream reduce . 37
    ) ($:flow reduce . 37) ($:constant reduce . 37) ($:parameter reduce . 37) 
    ($:discrete reduce . 37) ($:output reduce . 37) ($:input reduce . 37) 
    (#{$:\x29;}# reduce . 37) ($:, reduce . 37)) ((#{$:;}# reduce . 36) 
    ($:constrainedby reduce . 36) ($:stream reduce . 36) ($:flow reduce . 36) 
    ($:constant reduce . 36) ($:parameter reduce . 36) ($:discrete reduce . 36
    ) ($:output reduce . 36) ($:input reduce . 36) (#{$:\x29;}# reduce . 36) 
    ($:, reduce . 36)) (($:: reduce . 308) ($:= reduce . 308) ($:or reduce . 
    308) ($:and reduce . 308) ($:< reduce . 308) ($:<= reduce . 308) ($:> 
    reduce . 308) ($:>= reduce . 308) ($:== reduce . 308) ($:<> reduce . 308) 
    ($:.- reduce . 308) ($:.+ reduce . 308) ($:- reduce . 308) ($:+ reduce . 
    308) ($:* reduce . 308) ($:/ reduce . 308) ($:.* reduce . 308) ($:./ 
    reduce . 308) ($:.^ reduce . 308) ($:^ reduce . 308) (#{$:\x5d;}# reduce 
    . 308) ($:, reduce . 308) (#{$:\x7d;}# reduce . 308) (#{$:;}# reduce . 308
    ) (#{$:\x29;}# reduce . 308) ($:then reduce . 308) ($:loop reduce . 308) 
    ($:else reduce . 308) ($:elseif reduce . 308) ($string reduce . 308) 
    ($:annotation reduce . 308) ($:constrainedby reduce . 308) ($:end reduce 
    . 308) ($:elsewhen reduce . 308) ($:if reduce . 308)) ((named-argument 
    shift . 526) ($ident shift . 26) ($string shift . 50) ($float shift . 198)
    ($fixed shift . 199) ($:. shift . 27) (ident shift . 380) (#{$:\x7b;}# 
    shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der 
    shift . 203) (name shift . 204) ($:true shift . 205) ($:false shift . 206)
    (string shift . 207) (unsigned-number shift . 208) ($:- shift . 209) 
    ($:+ shift . 210) (primary shift . 211) (unary-expr shift . 212) (factor 
    shift . 213) (term shift . 214) (arithmetic-expression shift . 215) 
    ($:not shift . 216) (relation shift . 217) (logical-factor shift . 218) 
    (logical-term shift . 219) (logical-expression shift . 220) ($:if shift . 
    221) (simple-expression shift . 222) (expression shift . 378) ($:function 
    shift . 379) (function-argument shift . 527)) (($ident shift . 26) 
    (ident shift . 524) (named-argument shift . 525)) (($ident shift . 26) 
    ($string shift . 50) ($float shift . 198) ($fixed shift . 199) ($:. shift 
    . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 
    201) (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 204) 
    ($:true shift . 205) ($:false shift . 206) (string shift . 207) (
    unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary 
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) ($:not shift . 216) (relation 
    shift . 217) (logical-factor shift . 218) (logical-term shift . 219) 
    (logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 378) ($:function shift . 379) (
    function-argument shift . 523)) (($:. shift . 60) (#{$:\x28;}# shift . 522
    )) (($:: reduce . 307) ($:= reduce . 307) ($:or reduce . 307) ($:and 
    reduce . 307) ($:< reduce . 307) ($:<= reduce . 307) ($:> reduce . 307) 
    ($:>= reduce . 307) ($:== reduce . 307) ($:<> reduce . 307) ($:.- reduce 
    . 307) ($:.+ reduce . 307) ($:- reduce . 307) ($:+ reduce . 307) ($:* 
    reduce . 307) ($:/ reduce . 307) ($:.* reduce . 307) ($:./ reduce . 307) 
    ($:.^ reduce . 307) ($:^ reduce . 307) (#{$:\x5d;}# reduce . 307) ($:, 
    reduce . 307) (#{$:\x7d;}# reduce . 307) (#{$:;}# reduce . 307) (
    #{$:\x29;}# reduce . 307) ($:then reduce . 307) ($:loop reduce . 307) 
    ($:else reduce . 307) ($:elseif reduce . 307) ($string reduce . 307) 
    ($:annotation reduce . 307) ($:constrainedby reduce . 307) ($:end reduce 
    . 307) ($:elsewhen reduce . 307) ($:if reduce . 307)) (($ident shift . 26)
    ($string shift . 50) ($float shift . 198) ($fixed shift . 199) ($:. shift 
    . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 
    201) (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 204) 
    ($:true shift . 205) ($:false shift . 206) (string shift . 207) (
    unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary 
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) ($:not shift . 216) (relation 
    shift . 217) (logical-factor shift . 218) (logical-term shift . 219) 
    (logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 374) (expression-list-1 shift . 375) 
    (expression-list shift . 521)) (($ident shift . 26) ($string shift . 50) 
    ($float shift . 198) ($fixed shift . 199) ($:. shift . 27) (ident shift . 
    28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift
    . 202) ($:der shift . 203) (name shift . 204) ($:true shift . 205) 
    ($:false shift . 206) (string shift . 207) (unsigned-number shift . 208) 
    ($:- shift . 209) ($:+ shift . 210) (primary shift . 211) (unary-expr 
    shift . 212) (factor shift . 213) (term shift . 214) (
    arithmetic-expression shift . 215) ($:not shift . 216) (relation shift . 
    217) (logical-factor shift . 218) (logical-term shift . 219) (
    logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 520)) (($:: reduce . 306) ($:= reduce . 
    306) ($:or reduce . 306) ($:and reduce . 306) ($:< reduce . 306) ($:<= 
    reduce . 306) ($:> reduce . 306) ($:>= reduce . 306) ($:== reduce . 306) 
    ($:<> reduce . 306) ($:.- reduce . 306) ($:.+ reduce . 306) ($:- reduce . 
    306) ($:+ reduce . 306) ($:* reduce . 306) ($:/ reduce . 306) ($:.* reduce
    . 306) ($:./ reduce . 306) ($:.^ reduce . 306) ($:^ reduce . 306) (
    #{$:\x5d;}# reduce . 306) ($:, reduce . 306) (#{$:\x7d;}# reduce . 306) 
    (#{$:;}# reduce . 306) (#{$:\x29;}# reduce . 306) ($:then reduce . 306) 
    ($:loop reduce . 306) ($:else reduce . 306) ($:elseif reduce . 306) 
    ($string reduce . 306) ($:annotation reduce . 306) ($:constrainedby reduce
    . 306) ($:end reduce . 306) ($:elsewhen reduce . 306) ($:if reduce . 306))
    (($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 519)) (($:: reduce . 
    294) ($:= reduce . 294) ($:or reduce . 294) ($:and reduce . 294) ($:< 
    reduce . 294) ($:<= reduce . 294) ($:> reduce . 294) ($:>= reduce . 294) 
    ($:== reduce . 294) ($:<> reduce . 294) ($:.- reduce . 294) ($:.+ reduce 
    . 294) ($:- reduce . 294) ($:+ reduce . 294) ($:* reduce . 294) ($:/ 
    reduce . 294) ($:.* reduce . 294) ($:./ reduce . 294) ($:.^ reduce . 294) 
    ($:^ reduce . 294) (#{$:\x5d;}# reduce . 294) ($:, reduce . 294) (
    #{$:\x7d;}# reduce . 294) (#{$:;}# reduce . 294) (#{$:\x29;}# reduce . 294
    ) ($:then reduce . 294) ($:loop reduce . 294) ($:else reduce . 294) 
    ($:elseif reduce . 294) ($string reduce . 294) ($:annotation reduce . 294)
    ($:constrainedby reduce . 294) ($:end reduce . 294) ($:elsewhen reduce . 
    294) ($:if reduce . 294)) (($:: reduce . 293) ($:= reduce . 293) ($:or 
    reduce . 293) ($:and reduce . 293) ($:< reduce . 293) ($:<= reduce . 293) 
    ($:> reduce . 293) ($:>= reduce . 293) ($:== reduce . 293) ($:<> reduce . 
    293) ($:.- reduce . 293) ($:.+ reduce . 293) ($:- reduce . 293) ($:+ 
    reduce . 293) ($:* reduce . 293) ($:/ reduce . 293) ($:.* reduce . 293) 
    ($:./ reduce . 293) ($:.^ reduce . 293) ($:^ reduce . 293) (#{$:\x5d;}# 
    reduce . 293) ($:, reduce . 293) (#{$:\x7d;}# reduce . 293) (#{$:;}# 
    reduce . 293) (#{$:\x29;}# reduce . 293) ($:then reduce . 293) ($:loop 
    reduce . 293) ($:else reduce . 293) ($:elseif reduce . 293) ($string 
    reduce . 293) ($:annotation reduce . 293) ($:constrainedby reduce . 293) 
    ($:end reduce . 293) ($:elsewhen reduce . 293) ($:if reduce . 293)) 
    (($:^ shift . 367) ($:.^ shift . 368) ($:= reduce . 287) ($:: reduce . 287
    ) ($:./ reduce . 287) ($:.* reduce . 287) ($:/ reduce . 287) ($:* reduce 
    . 287) ($:+ reduce . 287) ($:- reduce . 287) ($:.+ reduce . 287) ($:.- 
    reduce . 287) ($:<> reduce . 287) ($:== reduce . 287) ($:>= reduce . 287) 
    ($:> reduce . 287) ($:<= reduce . 287) ($:< reduce . 287) ($:and reduce . 
    287) ($:or reduce . 287) (#{$:\x5d;}# reduce . 287) ($:, reduce . 287) 
    (#{$:\x7d;}# reduce . 287) (#{$:;}# reduce . 287) (#{$:\x29;}# reduce . 
    287) ($:then reduce . 287) ($:loop reduce . 287) ($:else reduce . 287) 
    ($:elseif reduce . 287) ($string reduce . 287) ($:annotation reduce . 287)
    ($:constrainedby reduce . 287) ($:end reduce . 287) ($:elsewhen reduce . 
    287) ($:if reduce . 287)) (($:./ shift . 362) ($:.* shift . 363) ($:/ 
    shift . 364) ($:* shift . 365) (mul-op shift . 366) ($:: reduce . 281) 
    ($:= reduce . 281) ($:or reduce . 281) ($:and reduce . 281) ($:< reduce . 
    281) ($:<= reduce . 281) ($:> reduce . 281) ($:>= reduce . 281) ($:== 
    reduce . 281) ($:<> reduce . 281) ($:.- reduce . 281) ($:.+ reduce . 281) 
    ($:- reduce . 281) ($:+ reduce . 281) (#{$:\x5d;}# reduce . 281) ($:, 
    reduce . 281) (#{$:\x7d;}# reduce . 281) (#{$:;}# reduce . 281) (
    #{$:\x29;}# reduce . 281) ($:then reduce . 281) ($:loop reduce . 281) 
    ($:else reduce . 281) ($:elseif reduce . 281) ($string reduce . 281) 
    ($:annotation reduce . 281) ($:constrainedby reduce . 281) ($:end reduce 
    . 281) ($:elsewhen reduce . 281) ($:if reduce . 281)) (($:.- shift . 357) 
    ($:.+ shift . 358) ($:- shift . 359) ($:+ shift . 360) (add-op shift . 361
    ) ($:= reduce . 273) ($:: reduce . 273) ($:<> reduce . 273) ($:== reduce 
    . 273) ($:>= reduce . 273) ($:> reduce . 273) ($:<= reduce . 273) ($:< 
    reduce . 273) ($:and reduce . 273) ($:or reduce . 273) (#{$:\x5d;}# reduce
    . 273) ($:, reduce . 273) (#{$:\x7d;}# reduce . 273) (#{$:;}# reduce . 273
    ) (#{$:\x29;}# reduce . 273) ($:then reduce . 273) ($:loop reduce . 273) 
    ($:else reduce . 273) ($:elseif reduce . 273) ($string reduce . 273) 
    ($:annotation reduce . 273) ($:constrainedby reduce . 273) ($:end reduce 
    . 273) ($:elsewhen reduce . 273) ($:if reduce . 273)) (($:= reduce . 269) 
    ($:: reduce . 269) ($:and reduce . 269) ($:or reduce . 269) (#{$:\x5d;}# 
    reduce . 269) ($:, reduce . 269) (#{$:\x7d;}# reduce . 269) (#{$:;}# 
    reduce . 269) (#{$:\x29;}# reduce . 269) ($:then reduce . 269) ($:loop 
    reduce . 269) ($:else reduce . 269) ($:elseif reduce . 269) ($string 
    reduce . 269) ($:annotation reduce . 269) ($:constrainedby reduce . 269) 
    ($:end reduce . 269) ($:elsewhen reduce . 269) ($:if reduce . 269)) 
    (($:and shift . 348) ($:: reduce . 267) ($:= reduce . 267) ($:or reduce . 
    267) (#{$:\x5d;}# reduce . 267) ($:, reduce . 267) (#{$:\x7d;}# reduce . 
    267) (#{$:;}# reduce . 267) (#{$:\x29;}# reduce . 267) ($:then reduce . 
    267) ($:loop reduce . 267) ($:else reduce . 267) ($:elseif reduce . 267) 
    ($string reduce . 267) ($:annotation reduce . 267) ($:constrainedby reduce
    . 267) ($:end reduce . 267) ($:elsewhen reduce . 267) ($:if reduce . 267))
    (($:: shift . 518) ($:or shift . 347) ($:= reduce . 265) (#{$:\x5d;}# 
    reduce . 265) ($:, reduce . 265) (#{$:\x7d;}# reduce . 265) (#{$:;}# 
    reduce . 265) (#{$:\x29;}# reduce . 265) ($:then reduce . 265) ($:loop 
    reduce . 265) ($:else reduce . 265) ($:elseif reduce . 265) ($string 
    reduce . 265) ($:annotation reduce . 265) ($:constrainedby reduce . 265) 
    ($:end reduce . 265) ($:elsewhen reduce . 265) ($:if reduce . 265)) 
    (($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 517)) ((#{$:\x5d;}# 
    reduce . 342) ($:, reduce . 342)) (($string reduce . 111) ($:annotation 
    reduce . 111) (#{$:;}# reduce . 111)) ((#{$:\x7d;}# reduce . 113) ($:, 
    reduce . 113)) ((#{$:\x7d;}# shift . 515) ($:, shift . 516)) (($string 
    reduce . 119) ($:annotation reduce . 119) (#{$:;}# reduce . 119) (
    #{$:\x29;}# reduce . 119) ($:, reduce . 119)) ((#{$:;}# reduce . 84)) 
    ((#{$:;}# shift . 514)) (($:annotation reduce . 67) ($:end reduce . 67)) 
    (($:annotation reduce . 68) ($:end reduce . 68)) (($::= reduce . 317) 
    (#{$:\x28;}# reduce . 317) ($:. reduce . 317) ($:= reduce . 317) ($:, 
    reduce . 317) (#{$:\x29;}# reduce . 317)) ((#{$:;}# reduce . 78) (
    $:annotation reduce . 78)) ((#{$:\x29;}# shift . 513)) ((#{$:\x28;}# shift
    . 512)) (($:annotation reduce . 69) ($:end reduce . 69)) (($:, shift . 511
    )) (($string shift . 50) ($float shift . 198) ($fixed shift . 199) 
    (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 
    202) ($:der shift . 203) ($:true shift . 205) ($:false shift . 206) 
    (string shift . 207) (unsigned-number shift . 208) ($:- shift . 209) 
    ($:+ shift . 210) (primary shift . 211) (unary-expr shift . 212) (factor 
    shift . 213) (term shift . 214) (arithmetic-expression shift . 215) 
    ($:not shift . 216) (relation shift . 217) (logical-factor shift . 218) 
    ($ident shift . 26) (logical-term shift . 219) ($:. shift . 27) (ident 
    shift . 28) (logical-expression shift . 220) ($:connect shift . 262) 
    ($:when shift . 263) ($:for shift . 264) ($:if shift . 265) (name shift . 
    266) (when-equation shift . 267) (connect-clause shift . 268) (
    for-equation shift . 269) (if-equation shift . 270) (simple-expression 
    shift . 271) (equation-1 shift . 272) (equation shift . 273) (
    equation-list-1 shift . 274) (equation-list shift . 510) ($:elseif reduce 
    . 218) ($:else reduce . 218) ($:end reduce . 218) ($:elsewhen reduce . 218
    )) (($:elsewhen shift . 507) (elsewhen-eq-part shift . 508) (
    elsewhen-eq-list shift . 509)) (($ident shift . 26) (ident shift . 303) 
    (for-index shift . 506)) (($string shift . 50) ($float shift . 198) 
    ($fixed shift . 199) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) 
    (#{$:\x28;}# shift . 202) ($:der shift . 203) ($:true shift . 205) 
    ($:false shift . 206) (string shift . 207) (unsigned-number shift . 208) 
    ($:- shift . 209) ($:+ shift . 210) (primary shift . 211) (unary-expr 
    shift . 212) (factor shift . 213) (term shift . 214) (
    arithmetic-expression shift . 215) ($:not shift . 216) (relation shift . 
    217) (logical-factor shift . 218) ($ident shift . 26) (logical-term shift 
    . 219) ($:. shift . 27) (ident shift . 28) (logical-expression shift . 220
    ) ($:connect shift . 262) ($:when shift . 263) ($:for shift . 264) 
    ($:if shift . 265) (name shift . 266) (when-equation shift . 267) (
    connect-clause shift . 268) (for-equation shift . 269) (if-equation shift 
    . 270) (simple-expression shift . 271) (equation-1 shift . 272) (equation 
    shift . 273) (equation-list-1 shift . 274) (equation-list shift . 504) 
    ($:end shift . 505)) (($:elseif shift . 498) (elseif-eq-part shift . 499) 
    (elseif-eq-list shift . 500) ($:else shift . 501) (else-eq-part shift . 
    502) ($:end shift . 503)) ((#{$:;}# reduce . 195) ($string reduce . 195) 
    ($:annotation reduce . 195)) (($float reduce . 193) ($fixed reduce . 193) 
    ($string reduce . 193) (#{$:\x7b;}# reduce . 193) (#{$:\x5b;}# reduce . 
    193) (#{$:\x28;}# reduce . 193) ($:der reduce . 193) ($:true reduce . 193)
    ($:false reduce . 193) ($:- reduce . 193) ($:+ reduce . 193) ($:not reduce
    . 193) ($:if reduce . 193) ($:for reduce . 193) ($:connect reduce . 193) 
    ($:when reduce . 193) ($ident reduce . 193) ($:. reduce . 193) ($:end 
    reduce . 193) ($:annotation reduce . 193) ($:public reduce . 193) (
    $:protected reduce . 193) ($:initial reduce . 193) ($:algorithm reduce . 
    193) ($:equation reduce . 193) ($:external reduce . 193) ($:elseif reduce 
    . 193) ($:else reduce . 193) ($:elsewhen reduce . 193)) (($ident shift . 
    26) (ident shift . 276) ($:. shift . 247) (component-reference-2 shift . 
    248) (component-reference-1 shift . 249) ($:when shift . 277) ($:while 
    shift . 278) ($:for shift . 279) ($:if shift . 280) (when-statement shift 
    . 281) (while-statement shift . 282) (for-statement shift . 283) (
    if-statement shift . 284) ($:return shift . 285) ($:break shift . 286) 
    (#{$:\x28;}# shift . 287) (component-reference shift . 288) (statement-1 
    shift . 289) (statement shift . 290) (statement-list shift . 497) (
    $:elseif reduce . 230) ($:else reduce . 230) ($:end reduce . 230) (
    $:elsewhen reduce . 230)) (($:elsewhen shift . 494) (elsewhen-st-part 
    shift . 495) (elsewhen-st-list shift . 496)) (($ident shift . 26) (ident 
    shift . 276) ($:. shift . 247) (component-reference-2 shift . 248) 
    (component-reference-1 shift . 249) ($:when shift . 277) ($:while shift . 
    278) ($:for shift . 279) ($:if shift . 280) (when-statement shift . 281) 
    (while-statement shift . 282) (for-statement shift . 283) (if-statement 
    shift . 284) ($:return shift . 285) ($:break shift . 286) (#{$:\x28;}# 
    shift . 287) (component-reference shift . 288) (statement-1 shift . 289) 
    (statement shift . 290) (statement-list shift . 492) ($:end shift . 493)) 
    (($ident shift . 26) (ident shift . 276) ($:. shift . 247) (
    component-reference-2 shift . 248) (component-reference-1 shift . 249) 
    ($:when shift . 277) ($:while shift . 278) ($:for shift . 279) ($:if shift
    . 280) (when-statement shift . 281) (while-statement shift . 282) (
    for-statement shift . 283) (if-statement shift . 284) ($:return shift . 
    285) ($:break shift . 286) (#{$:\x28;}# shift . 287) (component-reference 
    shift . 288) (statement-1 shift . 289) (statement shift . 290) (
    statement-list shift . 490) ($:end shift . 491)) (($ident shift . 26) 
    ($string shift . 50) ($float shift . 198) ($fixed shift . 199) ($:. shift 
    . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 
    201) (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 204) 
    ($:true shift . 205) ($:false shift . 206) (string shift . 207) (
    unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary 
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) ($:not shift . 216) (relation 
    shift . 217) (logical-factor shift . 218) (logical-term shift . 219) 
    (logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 489)) (($:elseif shift . 483) (
    elseif-st-part shift . 484) (elseif-st-list shift . 485) ($:else shift . 
    486) (else-st-part shift . 487) ($:end shift . 488)) (($::= shift . 482)) 
    ((#{$:\x29;}# shift . 481)) (($:: reduce . 321) ($:= reduce . 321) 
    ($:or reduce . 321) ($:and reduce . 321) ($:< reduce . 321) ($:<= reduce 
    . 321) ($:> reduce . 321) ($:>= reduce . 321) ($:== reduce . 321) ($:<> 
    reduce . 321) ($:.- reduce . 321) ($:.+ reduce . 321) ($:- reduce . 321) 
    ($:+ reduce . 321) ($:* reduce . 321) ($:/ reduce . 321) ($:.* reduce . 
    321) ($:./ reduce . 321) ($:.^ reduce . 321) ($:^ reduce . 321) (
    #{$:\x5d;}# reduce . 321) ($:, reduce . 321) (#{$:\x7d;}# reduce . 321) 
    (#{$:;}# reduce . 321) (#{$:\x29;}# reduce . 321) ($:then reduce . 321) 
    ($:loop reduce . 321) ($:else reduce . 321) ($:elseif reduce . 321) 
    ($string reduce . 321) ($:annotation reduce . 321) ($:constrainedby reduce
    . 321) ($:end reduce . 321) ($:elsewhen reduce . 321) ($:if reduce . 321))
    ((#{$:;}# reduce . 204) ($string reduce . 204) ($:annotation reduce . 204)
    ) (($ident reduce . 202) ($:. reduce . 202) ($:if reduce . 202) ($:for 
    reduce . 202) ($:while reduce . 202) ($:when reduce . 202) ($:return 
    reduce . 202) ($:break reduce . 202) (#{$:\x28;}# reduce . 202) (
    $:annotation reduce . 202) ($:public reduce . 202) ($:protected reduce . 
    202) ($:initial reduce . 202) ($:algorithm reduce . 202) ($:equation 
    reduce . 202) ($:external reduce . 202) ($:end reduce . 202) ($:elseif 
    reduce . 202) ($:else reduce . 202) ($:elsewhen reduce . 202)) (($:: 
    reduce . 320) ($:= reduce . 320) ($:or reduce . 320) ($:and reduce . 320) 
    ($:< reduce . 320) ($:<= reduce . 320) ($:> reduce . 320) ($:>= reduce . 
    320) ($:== reduce . 320) ($:<> reduce . 320) ($:.- reduce . 320) ($:.+ 
    reduce . 320) ($:- reduce . 320) ($:+ reduce . 320) ($:* reduce . 320) 
    ($:/ reduce . 320) ($:.* reduce . 320) ($:./ reduce . 320) ($:.^ reduce . 
    320) ($:^ reduce . 320) (#{$:\x5d;}# reduce . 320) ($:, reduce . 320) 
    (#{$:\x7d;}# reduce . 320) (#{$:;}# reduce . 320) (#{$:\x29;}# reduce . 
    320) ($:then reduce . 320) ($:loop reduce . 320) ($:else reduce . 320) 
    ($:elseif reduce . 320) ($string reduce . 320) ($:annotation reduce . 320)
    ($:constrainedby reduce . 320) ($:end reduce . 320) ($:elsewhen reduce . 
    320) ($:if reduce . 320)) (($ident shift . 26) (ident shift . 276) 
    ($:. shift . 247) (component-reference-2 shift . 248) (
    component-reference-1 shift . 249) (component-reference shift . 572)) 
    (($ident shift . 26) (ident shift . 276) ($:. shift . 247) (
    component-reference-2 shift . 248) (component-reference-1 shift . 249) 
    ($:when shift . 277) ($:while shift . 278) ($:for shift . 279) ($:if shift
    . 280) (when-statement shift . 281) (while-statement shift . 282) (
    for-statement shift . 283) (if-statement shift . 284) ($:return shift . 
    285) ($:break shift . 286) (#{$:\x28;}# shift . 287) (component-reference 
    shift . 288) (statement-1 shift . 289) (statement shift . 290) (
    statement-list shift . 571) ($:end reduce . 234) ($:elseif reduce . 234) 
    ($:else reduce . 234)) (($:end reduce . 231) ($:elseif reduce . 231) 
    ($:else reduce . 231)) (($:end shift . 568) ($:elseif shift . 483) 
    (elseif-st-part shift . 569) ($:else shift . 486) (else-st-part shift . 
    570)) (($ident shift . 26) (ident shift . 276) ($:. shift . 247) (
    component-reference-2 shift . 248) (component-reference-1 shift . 249) 
    ($:when shift . 277) ($:while shift . 278) ($:for shift . 279) ($:if shift
    . 280) (when-statement shift . 281) (while-statement shift . 282) (
    for-statement shift . 283) (if-statement shift . 284) ($:return shift . 
    285) ($:break shift . 286) (#{$:\x28;}# shift . 287) (component-reference 
    shift . 288) (statement-1 shift . 289) (statement shift . 290) (
    statement-list shift . 567) ($:end reduce . 236)) (($:end shift . 566)) 
    (($:if shift . 565)) (($:loop reduce . 243) ($:, reduce . 243)) (($:end 
    shift . 564) ($ident shift . 26) (ident shift . 276) ($:. shift . 247) 
    (component-reference-2 shift . 248) (component-reference-1 shift . 249) 
    ($:when shift . 277) ($:while shift . 278) ($:for shift . 279) ($:if shift
    . 280) (when-statement shift . 281) (while-statement shift . 282) (
    for-statement shift . 283) (if-statement shift . 284) ($:return shift . 
    285) ($:break shift . 286) (#{$:\x28;}# shift . 287) (component-reference 
    shift . 288) (statement-1 shift . 289) (statement shift . 293)) (($:for 
    shift . 563)) (($:end shift . 562) ($ident shift . 26) (ident shift . 276)
    ($:. shift . 247) (component-reference-2 shift . 248) (
    component-reference-1 shift . 249) ($:when shift . 277) ($:while shift . 
    278) ($:for shift . 279) ($:if shift . 280) (when-statement shift . 281) 
    (while-statement shift . 282) (for-statement shift . 283) (if-statement 
    shift . 284) ($:return shift . 285) ($:break shift . 286) (#{$:\x28;}# 
    shift . 287) (component-reference shift . 288) (statement-1 shift . 289) 
    (statement shift . 293)) (($:while shift . 561)) (($ident shift . 26) 
    ($string shift . 50) ($float shift . 198) ($fixed shift . 199) ($:. shift 
    . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 
    201) (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 204) 
    ($:true shift . 205) ($:false shift . 206) (string shift . 207) (
    unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary 
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) ($:not shift . 216) (relation 
    shift . 217) (logical-factor shift . 218) (logical-term shift . 219) 
    (logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 560)) (($:end reduce . 253) ($:elsewhen 
    reduce . 253)) (($:end shift . 558) ($:elsewhen shift . 494) (
    elsewhen-st-part shift . 559)) (($ident shift . 26) (ident shift . 276) 
    ($:. shift . 247) (component-reference-2 shift . 248) (
    component-reference-1 shift . 249) ($:when shift . 277) ($:while shift . 
    278) ($:for shift . 279) ($:if shift . 280) (when-statement shift . 281) 
    (while-statement shift . 282) (for-statement shift . 283) (if-statement 
    shift . 284) ($:return shift . 285) ($:break shift . 286) (#{$:\x28;}# 
    shift . 287) (component-reference shift . 288) (statement-1 shift . 289) 
    (statement shift . 293) ($:elseif reduce . 229) ($:else reduce . 229) 
    ($:end reduce . 229) ($:elsewhen reduce . 229)) (($string shift . 50) 
    ($float shift . 198) ($fixed shift . 199) (#{$:\x7b;}# shift . 200) 
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    ($:true shift . 205) ($:false shift . 206) (string shift . 207) (
    unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary 
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) ($:not shift . 216) (relation 
    shift . 217) (logical-factor shift . 218) ($ident shift . 26) (
    logical-term shift . 219) ($:. shift . 27) (ident shift . 28) (
    logical-expression shift . 220) ($:connect shift . 262) ($:when shift . 
    263) ($:for shift . 264) ($:if shift . 265) (name shift . 266) (
    when-equation shift . 267) (connect-clause shift . 268) (for-equation 
    shift . 269) (if-equation shift . 270) (simple-expression shift . 271) 
    (equation-1 shift . 272) (equation shift . 273) (equation-list-1 shift . 
    274) (equation-list shift . 557) ($:end reduce . 222) ($:elseif reduce . 
    222) ($:else reduce . 222)) (($:end reduce . 219) ($:elseif reduce . 219) 
    ($:else reduce . 219)) (($:end shift . 554) ($:elseif shift . 498) 
    (elseif-eq-part shift . 555) ($:else shift . 501) (else-eq-part shift . 
    556)) (($string shift . 50) ($float shift . 198) ($fixed shift . 199) 
    (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 
    202) ($:der shift . 203) ($:true shift . 205) ($:false shift . 206) 
    (string shift . 207) (unsigned-number shift . 208) ($:- shift . 209) 
    ($:+ shift . 210) (primary shift . 211) (unary-expr shift . 212) (factor 
    shift . 213) (term shift . 214) (arithmetic-expression shift . 215) 
    ($:not shift . 216) (relation shift . 217) (logical-factor shift . 218) 
    ($ident shift . 26) (logical-term shift . 219) ($:. shift . 27) (ident 
    shift . 28) (logical-expression shift . 220) ($:connect shift . 262) 
    ($:when shift . 263) ($:for shift . 264) ($:if shift . 265) (name shift . 
    266) (when-equation shift . 267) (connect-clause shift . 268) (
    for-equation shift . 269) (if-equation shift . 270) (simple-expression 
    shift . 271) (equation-1 shift . 272) (equation shift . 273) (
    equation-list-1 shift . 274) (equation-list shift . 553) ($:end reduce . 
    224)) (($:end shift . 552)) (($:if shift . 551)) (($:end shift . 550)) 
    (($:for shift . 549)) (($:loop reduce . 242) ($:, reduce . 242)) (($ident 
    shift . 26) ($string shift . 50) ($float shift . 198) ($fixed shift . 199)
    ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}#
    shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 
    204) ($:true shift . 205) ($:false shift . 206) (string shift . 207) 
    (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) ($:not shift . 216) (relation 
    shift . 217) (logical-factor shift . 218) (logical-term shift . 219) 
    (logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 548)) (($:end reduce . 248) ($:elsewhen 
    reduce . 248)) (($:end shift . 546) ($:elsewhen shift . 507) (
    elsewhen-eq-part shift . 547)) (($:elseif reduce . 217) ($:else reduce . 
    217) ($:end reduce . 217) ($:elsewhen reduce . 217)) (($ident shift . 26) 
    (ident shift . 276) ($:. shift . 247) (component-reference-2 shift . 248) 
    (component-reference-1 shift . 249) (component-reference shift . 545)) 
    ((#{$:\x29;}# shift . 543) ($ident shift . 26) ($string shift . 50) 
    ($float shift . 198) ($fixed shift . 199) ($:. shift . 27) (ident shift . 
    28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift
    . 202) ($:der shift . 203) (name shift . 204) ($:true shift . 205) 
    ($:false shift . 206) (string shift . 207) (unsigned-number shift . 208) 
    ($:- shift . 209) ($:+ shift . 210) (primary shift . 211) (unary-expr 
    shift . 212) (factor shift . 213) (term shift . 214) (
    arithmetic-expression shift . 215) ($:not shift . 216) (relation shift . 
    217) (logical-factor shift . 218) (logical-term shift . 219) (
    logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 374) (expression-list-1 shift . 375) 
    (expression-list shift . 544)) ((#{$:;}# reduce . 77) ($:annotation reduce
    . 77)) (($:annotation reduce . 66) ($:end reduce . 66)) (($string reduce 
    . 112) ($:annotation reduce . 112) (#{$:;}# reduce . 112)) (($ident shift 
    . 26) (ident shift . 542)) (($:else shift . 539) ($:elseif shift . 540) 
    (elseif-ex-list shift . 541)) (($ident shift . 26) ($string shift . 50) 
    ($float shift . 198) ($fixed shift . 199) ($:. shift . 27) (ident shift . 
    28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift
    . 202) ($:der shift . 203) (name shift . 204) ($:true shift . 205) 
    ($:false shift . 206) (string shift . 207) (unsigned-number shift . 208) 
    ($:- shift . 209) ($:+ shift . 210) (primary shift . 211) (unary-expr 
    shift . 212) (factor shift . 213) (term shift . 214) (
    arithmetic-expression shift . 215) ($:not shift . 216) (relation shift . 
    217) (logical-factor shift . 218) (logical-term shift . 219) (
    logical-expression shift . 538)) ((#{$:\x29;}# reduce . 336) ($:, reduce 
    . 336)) ((#{$:\x5d;}# reduce . 339) (#{$:;}# reduce . 339) ($:, reduce . 
    339) (#{$:\x29;}# reduce . 339) ($:end reduce . 339) ($:elsewhen reduce . 
    339)) ((#{$:\x5d;}# reduce . 310) (#{$:;}# reduce . 310)) (($string shift 
    . 50) ($float shift . 198) ($fixed shift . 199) ($:. shift . 27) (
    #{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 
    202) ($:der shift . 203) (name shift . 204) ($:true shift . 205) ($:false 
    shift . 206) (string shift . 207) (unsigned-number shift . 208) ($:- shift
    . 209) ($:+ shift . 210) (primary shift . 211) (unary-expr shift . 212) 
    (factor shift . 213) (term shift . 214) (arithmetic-expression shift . 215
    ) ($:not shift . 216) (relation shift . 217) (logical-factor shift . 218) 
    (logical-term shift . 219) (logical-expression shift . 220) ($:if shift . 
    221) (simple-expression shift . 222) ($ident shift . 26) (expression shift
    . 378) ($:function shift . 379) (ident shift . 380) (function-argument 
    shift . 382) (function-arguments-1 shift . 534) (named-argument shift . 
    381) (named-only-arguments-1 shift . 535) (named-arguments shift . 536) 
    (#{$:\x29;}# shift . 537)) ((#{$:\x7d;}# reduce . 330) ($:, reduce . 330) 
    (#{$:\x29;}# reduce . 330)) (($:= shift . 432)) ((#{$:\x7d;}# reduce . 328
    ) ($:, reduce . 328) (#{$:\x29;}# reduce . 328)) ((#{$:\x7d;}# reduce . 
    329) ($:, reduce . 329) (#{$:\x29;}# reduce . 329)) ((#{$:\x7d;}# reduce 
    . 325) ($:, reduce . 325) (#{$:\x29;}# reduce . 325)) (($string shift . 50
    ) (string shift . 51) (string-cat-1 shift . 52) (string-cat shift . 53) 
    (string-comment shift . 193) (comment shift . 533) (#{$:;}# reduce . 347) 
    ($:constrainedby reduce . 347) ($:annotation reduce . 347)) (($ident shift
    . 26) (ident shift . 532)) (($string shift . 50) (string shift . 51) 
    (string-cat-1 shift . 52) (string-cat shift . 53) (string-comment shift . 
    193) (comment shift . 531) ($:constrainedby reduce . 347) (#{$:\x29;}# 
    reduce . 347) ($:, reduce . 347) ($:annotation reduce . 347)) ((
    $:constrainedby reduce . 181) (#{$:\x29;}# reduce . 181) ($:, reduce . 181
    )) ((#{$:\x29;}# reduce . 42) (#{$:;}# reduce . 42)) ((#{$:;}# reduce . 39
    ) ($:constrainedby reduce . 39)) (($:, shift . 430)) (($:, shift . 431) 
    (#{$:\x29;}# reduce . 326)) ((#{$:\x29;}# shift . 593)) ((#{$:\x7d;}# 
    reduce . 332) ($:, reduce . 332) (#{$:\x29;}# reduce . 332)) (($:or shift 
    . 347) ($:= reduce . 264) (#{$:\x5d;}# reduce . 264) ($:, reduce . 264) 
    (#{$:\x7d;}# reduce . 264) (#{$:;}# reduce . 264) (#{$:\x29;}# reduce . 
    264) ($:then reduce . 264) ($:loop reduce . 264) ($:else reduce . 264) 
    ($:elseif reduce . 264) ($string reduce . 264) ($:annotation reduce . 264)
    ($:constrainedby reduce . 264) ($:end reduce . 264) ($:elsewhen reduce . 
    264) ($:if reduce . 264)) (($ident shift . 26) ($string shift . 50) 
    ($float shift . 198) ($fixed shift . 199) ($:. shift . 27) (ident shift . 
    28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift
    . 202) ($:der shift . 203) (name shift . 204) ($:true shift . 205) 
    ($:false shift . 206) (string shift . 207) (unsigned-number shift . 208) 
    ($:- shift . 209) ($:+ shift . 210) (primary shift . 211) (unary-expr 
    shift . 212) (factor shift . 213) (term shift . 214) (
    arithmetic-expression shift . 215) ($:not shift . 216) (relation shift . 
    217) (logical-factor shift . 218) (logical-term shift . 219) (
    logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 592)) (($ident shift . 26) ($string shift
    . 50) ($float shift . 198) ($fixed shift . 199) ($:. shift . 27) (ident 
    shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}# shift . 201) (
    #{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 204) ($:true 
    shift . 205) ($:false shift . 206) (string shift . 207) (unsigned-number 
    shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary shift . 211) 
    (unary-expr shift . 212) (factor shift . 213) (term shift . 214) (
    arithmetic-expression shift . 215) ($:not shift . 216) (relation shift . 
    217) (logical-factor shift . 218) (logical-term shift . 219) (
    logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 591)) (($:else shift . 589) ($:elseif 
    shift . 590)) ((#{$:\x7d;}# reduce . 114) ($:, reduce . 114)) ((#{$:;}# 
    reduce . 76) ($:annotation reduce . 76)) ((#{$:\x29;}# shift . 588)) 
    ((#{$:\x29;}# shift . 587)) (($:when shift . 586)) (($:end reduce . 249) 
    ($:elsewhen reduce . 249)) (($:then shift . 585)) (($:annotation reduce . 
    238) ($string reduce . 238) (#{$:;}# reduce . 238)) (($:for shift . 584)) 
    (($:annotation reduce . 216) ($string reduce . 216) (#{$:;}# reduce . 216)
    ) (($:if shift . 583)) (($:end reduce . 223)) (($:if shift . 582)) 
    (($:end reduce . 220) ($:elseif reduce . 220) ($:else reduce . 220)) 
    (($:end shift . 581)) (($:end reduce . 221) ($:elseif reduce . 221) 
    ($:else reduce . 221)) (($:when shift . 580)) (($:end reduce . 254) 
    ($:elsewhen reduce . 254)) (($:then shift . 579)) (($:annotation reduce . 
    246) ($string reduce . 246) (#{$:;}# reduce . 246)) (($:while shift . 578)
    ) (($:annotation reduce . 240) ($string reduce . 240) (#{$:;}# reduce . 
    240)) (($:for shift . 577)) (($:annotation reduce . 228) ($string reduce 
    . 228) (#{$:;}# reduce . 228)) (($:if shift . 576)) (($ident shift . 26) 
    (ident shift . 276) ($:. shift . 247) (component-reference-2 shift . 248) 
    (component-reference-1 shift . 249) ($:when shift . 277) ($:while shift . 
    278) ($:for shift . 279) ($:if shift . 280) (when-statement shift . 281) 
    (while-statement shift . 282) (for-statement shift . 283) (if-statement 
    shift . 284) ($:return shift . 285) ($:break shift . 286) (#{$:\x28;}# 
    shift . 287) (component-reference shift . 288) (statement-1 shift . 289) 
    (statement shift . 293) ($:end reduce . 235)) (($:if shift . 575)) 
    (($:end reduce . 232) ($:elseif reduce . 232) ($:else reduce . 232)) 
    (($:end shift . 574)) (($ident shift . 26) (ident shift . 276) ($:. shift 
    . 247) (component-reference-2 shift . 248) (component-reference-1 shift . 
    249) ($:when shift . 277) ($:while shift . 278) ($:for shift . 279) 
    ($:if shift . 280) (when-statement shift . 281) (while-statement shift . 
    282) (for-statement shift . 283) (if-statement shift . 284) ($:return 
    shift . 285) ($:break shift . 286) (#{$:\x28;}# shift . 287) (
    component-reference shift . 288) (statement-1 shift . 289) (statement 
    shift . 293) ($:end reduce . 233) ($:elseif reduce . 233) ($:else reduce 
    . 233)) ((#{$:\x28;}# shift . 297) (function-call-args shift . 573)) 
    ((#{$:;}# reduce . 206) ($string reduce . 206) ($:annotation reduce . 206)
    ) (($:if shift . 600)) (($:annotation reduce . 226) ($string reduce . 226)
    (#{$:;}# reduce . 226)) (($:annotation reduce . 227) ($string reduce . 227
    ) (#{$:;}# reduce . 227)) (($:annotation reduce . 239) ($string reduce . 
    239) (#{$:;}# reduce . 239)) (($:annotation reduce . 245) ($string reduce 
    . 245) (#{$:;}# reduce . 245)) (($ident shift . 26) (ident shift . 276) 
    ($:. shift . 247) (component-reference-2 shift . 248) (
    component-reference-1 shift . 249) ($:when shift . 277) ($:while shift . 
    278) ($:for shift . 279) ($:if shift . 280) (when-statement shift . 281) 
    (while-statement shift . 282) (for-statement shift . 283) (if-statement 
    shift . 284) ($:return shift . 285) ($:break shift . 286) (#{$:\x28;}# 
    shift . 287) (component-reference shift . 288) (statement-1 shift . 289) 
    (statement shift . 290) (statement-list shift . 599) ($:end reduce . 255) 
    ($:elsewhen reduce . 255)) (($:annotation reduce . 252) ($string reduce . 
    252) (#{$:;}# reduce . 252)) (($:if shift . 598)) (($:annotation reduce . 
    214) ($string reduce . 214) (#{$:;}# reduce . 214)) (($:annotation reduce 
    . 215) ($string reduce . 215) (#{$:;}# reduce . 215)) (($:annotation 
    reduce . 237) ($string reduce . 237) (#{$:;}# reduce . 237)) (($ident 
    shift . 26) ($string shift . 50) ($float shift . 198) ($fixed shift . 199)
    ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}#
    shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 
    204) ($:true shift . 205) ($:false shift . 206) (string shift . 207) 
    (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) ($:not shift . 216) (relation 
    shift . 217) (logical-factor shift . 218) (logical-term shift . 219) 
    (logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 374) (expression-list-1 shift . 375) 
    (expression-list shift . 597) ($:end reduce . 250) ($:elsewhen reduce . 
    250)) (($:annotation reduce . 247) ($string reduce . 247) (#{$:;}# reduce 
    . 247)) (($:annotation reduce . 257) ($string reduce . 257) (#{$:;}# 
    reduce . 257)) ((#{$:;}# reduce . 75) ($:annotation reduce . 75)) (
    ($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 596)) (($ident shift . 
    26) ($string shift . 50) ($float shift . 198) ($fixed shift . 199) 
    ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200) (#{$:\x5b;}#
    shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) (name shift . 
    204) ($:true shift . 205) ($:false shift . 206) (string shift . 207) 
    (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 210) (primary
    shift . 211) (unary-expr shift . 212) (factor shift . 213) (term shift . 
    214) (arithmetic-expression shift . 215) ($:not shift . 216) (relation 
    shift . 217) (logical-factor shift . 218) (logical-term shift . 219) 
    (logical-expression shift . 220) ($:if shift . 221) (simple-expression 
    shift . 222) (expression shift . 595)) (($:then shift . 594)) ((
    #{$:\x5d;}# reduce . 260) ($:, reduce . 260) (#{$:\x7d;}# reduce . 260) 
    (#{$:;}# reduce . 260) (#{$:\x29;}# reduce . 260) ($:then reduce . 260) 
    ($:loop reduce . 260) ($:else reduce . 260) ($:elseif reduce . 260) 
    ($string reduce . 260) ($:annotation reduce . 260) ($:constrainedby reduce
    . 260) ($:end reduce . 260) ($:elsewhen reduce . 260) ($:if reduce . 260))
    ((#{$:\x7d;}# reduce . 331) ($:, reduce . 331) (#{$:\x29;}# reduce . 331))
    (($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 602)) (($:then shift . 
    601)) ((#{$:\x5d;}# reduce . 259) ($:, reduce . 259) (#{$:\x7d;}# reduce 
    . 259) (#{$:;}# reduce . 259) (#{$:\x29;}# reduce . 259) ($:then reduce . 
    259) ($:loop reduce . 259) ($:else reduce . 259) ($:elseif reduce . 259) 
    ($string reduce . 259) ($:annotation reduce . 259) ($:constrainedby reduce
    . 259) ($:end reduce . 259) ($:elsewhen reduce . 259) ($:if reduce . 259))
    (($:end reduce . 251) ($:elsewhen reduce . 251)) (($:annotation reduce . 
    213) ($string reduce . 213) (#{$:;}# reduce . 213)) (($ident shift . 26) 
    (ident shift . 276) ($:. shift . 247) (component-reference-2 shift . 248) 
    (component-reference-1 shift . 249) ($:when shift . 277) ($:while shift . 
    278) ($:for shift . 279) ($:if shift . 280) (when-statement shift . 281) 
    (while-statement shift . 282) (for-statement shift . 283) (if-statement 
    shift . 284) ($:return shift . 285) ($:break shift . 286) (#{$:\x28;}# 
    shift . 287) (component-reference shift . 288) (statement-1 shift . 289) 
    (statement shift . 293) ($:end reduce . 256) ($:elsewhen reduce . 256)) 
    (($:annotation reduce . 225) ($string reduce . 225) (#{$:;}# reduce . 225)
    ) (($ident shift . 26) ($string shift . 50) ($float shift . 198) ($fixed 
    shift . 199) ($:. shift . 27) (ident shift . 28) (#{$:\x7b;}# shift . 200)
    (#{$:\x5b;}# shift . 201) (#{$:\x28;}# shift . 202) ($:der shift . 203) 
    (name shift . 204) ($:true shift . 205) ($:false shift . 206) (string 
    shift . 207) (unsigned-number shift . 208) ($:- shift . 209) ($:+ shift . 
    210) (primary shift . 211) (unary-expr shift . 212) (factor shift . 213) 
    (term shift . 214) (arithmetic-expression shift . 215) ($:not shift . 216)
    (relation shift . 217) (logical-factor shift . 218) (logical-term shift . 
    219) (logical-expression shift . 220) ($:if shift . 221) (
    simple-expression shift . 222) (expression shift . 603)) (($:else reduce 
    . 261) ($:elseif reduce . 261)) (($:else reduce . 262) ($:elseif reduce . 
    262))))

(define mo-rto-v
  #($start stored-definition stored-definition stored-definition 
    stored-definition-1 stored-definition-1 stored-definition-2 
    stored-definition-2 stored-definition-2 stored-definition-2 
    class-definition class-definition class-prefixes class-prefixes 
    class-prefixes-1 class-prefixes-1 class-prefixes-1 class-prefixes-1 
    class-prefixes-1 class-prefixes-1 class-prefixes-1 class-prefixes-1 
    class-prefixes-1 class-prefixes-1 class-prefixes-1 class-prefixes-1 
    class-prefixes-1 class-prefixes-1 class-prefixes-1 class-prefixes-1 
    class-specifier class-specifier class-specifier long-class-specifier 
    long-class-specifier long-class-specifier short-class-specifier 
    short-class-specifier short-class-specifier der-class-specifier 
    der-class-specifier-1 ident-list-1 ident-list-1 base-prefix base-prefix 
    base-prefix opt-array-subscripts opt-array-subscripts 
    opt-class-modification opt-class-modification enum-list enum-list 
    enumeration-literal composition composition composition composition 
    composition-1-list composition-1-list-1 composition-1-list-1 composition-1
    composition-1 composition-1 composition-1 composition-1 composition-1 
    external-part external-part external-part external-part external-part 
    external-part external-part external-part language-specification 
    external-function-call external-function-call external-function-call 
    external-function-call element-list element-list-1 element-list-1 element 
    element element element element element element $P1 $P1 $P2 $P2 $P3 $P3 
    $P4 $P4 $P5 $P5 $P6 $P6 element-1 element-1 element-1 element-2 element-2 
    import-clause import-clause-1 import-clause-1 import-clause-1 
    import-clause-2 import-clause-2 import-clause-2 import-list import-list 
    extends-clause extends-clause extends-clause extends-clause 
    constraining-clause constraining-clause component-clause component-clause 
    component-clause component-clause type-prefix type-prefix type-prefix 
    type-prefix type-prefix type-prefix type-prefix type-prefix-1 
    type-prefix-1 type-prefix-2 type-prefix-2 type-prefix-2 type-prefix-3 
    type-prefix-3 type-specifier component-list component-list-1 
    component-list-1 component-declaration component-declaration 
    condition-attribute declaration $P7 $P7 $P8 $P8 modification modification 
    modification modification class-modification class-modification 
    argument-list arg-list-1 arg-list-1 argument argument 
    element-modification-or-replaceable element-modification-or-replaceable 
    element-modification-or-replaceable element-modification-or-replaceable 
    elt-mod-or-repl-1 elt-mod-or-repl-1 element-modification $P9 $P9 
    element-redeclaration $P10 $P10 $P11 $P11 elt-redecl-1 elt-redecl-1 
    elt-redecl-1 element-replaceable element-replaceable component-clause1 
    short-class-definition equation-section equation-section equation-section 
    equation-section algorithm-section algorithm-section algorithm-section 
    algorithm-section equation-list equation-list-1 equation-list-1 equation 
    equation-1 equation-1 equation-1 equation-1 equation-1 equation-1 
    statement-list statement-list statement statement-1 statement-1 
    statement-1 statement-1 statement-1 statement-1 statement-1 statement-1 
    statement-1 if-equation if-equation if-equation if-equation then-eq-part 
    then-eq-part elseif-eq-list elseif-eq-list elseif-eq-part elseif-eq-part 
    else-eq-part else-eq-part if-statement if-statement if-statement 
    if-statement then-st-part then-st-part elseif-st-list elseif-st-list 
    elseif-st-part elseif-st-part else-st-part else-st-part for-equation 
    for-equation for-statement for-statement for-indices for-indices for-index
    for-index while-statement while-statement when-equation elsewhen-eq-list 
    elsewhen-eq-list elsewhen-eq-part elsewhen-eq-part when-statement 
    elsewhen-st-list elsewhen-st-list elsewhen-st-part elsewhen-st-part 
    connect-clause expression expression expression elseif-ex-list 
    elseif-ex-list simple-expression simple-expression simple-expression 
    logical-expression logical-expression logical-term logical-term 
    logical-factor logical-factor relation relation rel-op rel-op rel-op 
    rel-op rel-op rel-op arithmetic-expression arithmetic-expression add-op 
    add-op add-op add-op term term mul-op mul-op mul-op mul-op factor factor 
    factor unary-expr unary-expr unary-expr primary primary primary primary 
    primary primary primary primary primary primary primary 
    expression-list-list expression-list-list name name name 
    component-reference component-reference-1 component-reference-1 
    component-reference-1 component-reference-2 component-reference-2 
    function-call-args function-call-args function-arguments 
    function-arguments function-arguments-1 function-arguments-1 
    named-arguments named-only-arguments-1 named-only-arguments-1 
    named-only-arguments-1 named-argument function-argument function-argument 
    function-argument output-expression-list output-expression-list 
    output-expression-list expression-list expression-list-1 expression-list-1
    array-subscripts array-subscript-list array-subscript-list subscript 
    subscript comment comment string-comment string-comment string-cat 
    string-cat-1 string-cat-1 opt-annotation opt-annotation annotation 
    unsigned-number unsigned-number ident string))

(define mo-mtab
  '(($start . stored-definition) ($string . $string) ($ident . $ident) 
    ($float . $float) ($fixed . $fixed) ("annotation" . $:annotation) ("]" . 
    #{$:\x5d;}#) ("[" . #{$:\x5b;}#) ("true" . $:true) ("false" . $:false) 
    (".^" . $:.^) ("^" . $:^) ("./" . $:./) (".*" . $:.*) ("/" . $:/) (".-" . 
    $:.-) (".+" . $:.+) ("-" . $:-) ("+" . $:+) ("<>" . $:<>) ("==" . $:==) 
    (">=" . $:>=) (">" . $:>) ("<=" . $:<=) ("<" . $:<) ("not" . $:not) 
    ("and" . $:and) ("or" . $:or) ("connect" . $:connect) ("elsewhen" . 
    $:elsewhen) ("when" . $:when) ("while" . $:while) ("in" . $:in) ("loop" . 
    $:loop) ("for" . $:for) ("else" . $:else) ("elseif" . $:elseif) ("then" . 
    $:then) ("return" . $:return) ("break" . $:break) ("algorithm" . 
    $:algorithm) ("equation" . $:equation) ("initial" . $:initial) ("each" . 
    $:each) (":=" . $::=) ("if" . $:if) ("constant" . $:constant) ("parameter"
    . $:parameter) ("discrete" . $:discrete) ("stream" . $:stream) ("flow" . 
    $:flow) ("constrainedby" . $:constrainedby) ("}" . #{$:\x7d;}#) ("{" . 
    #{$:\x7b;}#) ("*" . $:*) ("." . $:.) ("import" . $:import) ("replaceable" 
    . $:replaceable) ("outer" . $:outer) ("inner" . $:inner) ("redeclare" . 
    $:redeclare) ("external" . $:external) ("protected" . $:protected) 
    ("public" . $:public) ("output" . $:output) ("input" . $:input) ("," . $:,
    ) ("der" . $:der) (":" . $::) (")" . #{$:\x29;}#) ("(" . #{$:\x28;}#) 
    ("enumeration" . $:enumeration) ("=" . $:=) ("extends" . $:extends) 
    ("end" . $:end) ("pure" . $:pure) ("function" . $:function) ("impure" . 
    $:impure) ("package" . $:package) ("type" . $:type) ("connector" . 
    $:connector) ("expandable" . $:expandable) ("block" . $:block) ("record" 
    . $:record) ("operator" . $:operator) ("model" . $:model) ("class" . 
    $:class) ("partial" . $:partial) ("encapsulated" . $:encapsulated) 
    ("final" . $:final) (";" . #{$:;}#) ("within" . $:within) ($error . $error
    ) ($end . $end)))

(define mo-tables
  (list
   (cons 'len-v mo-len-v)
   (cons 'pat-v mo-pat-v)
   (cons 'rto-v mo-rto-v)
   (cons 'mtab mo-mtab)))

;;; end tables
