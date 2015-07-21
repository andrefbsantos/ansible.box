#!/usr/bin/env bats

@test "ruby bin exists and is in the PATH" {
  command -v ruby
}
