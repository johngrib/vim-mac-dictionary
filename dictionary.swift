#!/usr/bin/swift
// https://apple.stackexchange.com/a/305930
import Foundation

if CommandLine.argc >= 2 {
    let argument = CommandLine.arguments[1]
    let result = DCSCopyTextDefinition(
            nil,
            argument as CFString,
            CFRangeMake(0, argument.count)
    )?.takeRetainedValue() as String?
    print(result ?? "")
}
