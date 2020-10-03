const std = @import("std");
const N = 10000000;

pub fn main() void {

    var c: u32 = 1;
    var i: u32 = 3;

    while (i < N) {
        var j: u32 = 3;
        var isPrime: bool = true;
        const sqrti: f32 = @sqrt(@intToFloat(f32, i));
        while (@intToFloat(f32, j) <= sqrti) {
            if (i % j == 0) {
                isPrime = false;
                break;
            }
            j += 2;
        }
        if (isPrime) {
            c += 1;
        }
        i += 2;
    }

    std.debug.warn("{}\n", .{c});
}
