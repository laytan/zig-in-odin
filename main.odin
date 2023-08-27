package main

import "core:fmt"

foreign import mathtest "libmathtest.a"

@(default_calling_convention="c")
foreign mathtest {
    add :: proc(a, b: i32) -> i32 ---
}

main :: proc() {
    fmt.println(add(2, 3))
}
