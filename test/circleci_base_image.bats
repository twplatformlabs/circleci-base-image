#!/usr/bin/env bats

@test "gcc available" {
  run bash -c "docker exec container-test gcc --help"
  [[ "${output}" =~ "Usage: gcc" ]]
}

@test "cmake available" {
  run bash -c "docker exec container-test cmake --help"
  [[ "${output}" =~ "cmake [options]" ]]
}

@test "make available" {
  run bash -c "docker exec container-test make --help"
  [[ "${output}" =~ "Usage: make" ]]
}

@test "curl available" {
  run bash -c "docker exec container-test curl --help"
  [[ "${output}" =~ "Usage: curl" ]]
}

@test "wget available" {
  run bash -c "docker exec container-test wget --help"
  [[ "${output}" =~ "Usage: wget" ]]
}

@test "unzip available" {
  run bash -c "docker exec container-test unzip --help"
  [[ "${output}" =~ "Usage: unzip" ]]
}

@test "zip available" {
  run bash -c "docker exec container-test zip --help"
  [[ "${output}" =~ "zip [-options]" ]]
}

@test "bzip2 available" {
  run bash -c "docker exec container-test bzip2 --help"
  [[ "${output}" =~ "usage: bzip2" ]]
}

@test "sudo available" {
  run bash -c "docker exec container-test sudo --help"
  [[ "${output}" =~ "usage: sudo" ]]
}

@test "github-cli available" {
  run bash -c "docker exec container-test gh --help"
  [[ "${output}" =~ "GitHub from the command line" ]]
}

@test "jq available" {
  run bash -c "docker exec container-test jq --help"
  [[ "${output}" =~ "Usage:	jq" ]]
}

@test "gnupg available" {
  run bash -c "docker exec container-test gpg --help"
  [[ "${output}" =~ "Syntax: gpg" ]]
}

@test "docker available" {
  run bash -c "docker exec container-test docker --help"
  [[ "${output}" =~ "Usage:  docker" ]]
}

@test "bash available" {
  run bash -c "docker exec container-test bash --help"
  [[ "${output}" =~ "Usage:	bash" ]]
}

@test "check locale" {
  run bash -c "docker exec container-test locale"
  [[ "${output}" =~ "LC_ALL=en_US.UTF-8" ]]
}

@test "1password available" {
  run bash -c "docker exec container-test op --help"
  [[ "${output}" =~ "Usage:  op" ]]
}

@test "vault available" {
  run bash -c "docker exec container-test vault --help"
  [[ "${output}" =~ "Usage: vault" ]]
}

@test "teller available" {
  run bash -c "docker exec container-test teller --help"
  [[ "${output}" =~ "Usage: teller" ]]
}

@test "describe user circleci" {
  run bash -c "docker exec container-test getent passwd | grep circleci"
  [[ "${output}" =~ "circleci:x:3434:3434" ]]
  [[ "${output}" =~ "/home/circleci" ]]
}

@test "describe /home/circleci" {
  run bash -c "docker exec container-test ls -la /home/circleci"
  [[ "${output}" =~ "circleci circleci" ]]
}

@test "describe /home/circleci/project" {
  run bash -c "docker exec container-test ls -la /home/circleci/project"
  [[ "${output}" =~ "circleci circleci" ]]
}

@test "describe /home/circleci/.gnupg" {
  run bash -c "docker exec container-test ls -la /home/circleci/.gnupg"
  [[ "${output}" =~ "gpg.conf" ]]
}
