#!/usr/bin/env bats

@test "gcc version" {
  run bash -c "docker exec container-test gcc --help"
  [[ "${output}" =~ "Usage: gcc" ]]
}

@test "cmake version" {
  run bash -c "docker exec container-test cmake --help"
  [[ "${output}" =~ "cmake [options]" ]]
}

@test "make version" {
  run bash -c "docker exec container-test make --help"
  [[ "${output}" =~ "Usage: make" ]]
}

@test "curl version" {
  run bash -c "docker exec container-test curl --help"
  [[ "${output}" =~ "Usage: curl" ]]
}

@test "wget version" {
  run bash -c "docker exec container-test wget --help"
  [[ "${output}" =~ "Usage: wget" ]]
}

@test "unzip version" {
  run bash -c "docker exec container-test unzip --help"
  [[ "${output}" =~ "Usage: unzip" ]]
}

@test "zip version" {
  run bash -c "docker exec container-test zip --help"
  [[ "${output}" =~ "zip [-options]" ]]
}

@test "bzip2 version" {
  run bash -c "docker exec container-test bzip2 --help"
  [[ "${output}" =~ "usage: bzip2" ]]
}

@test "sudo version" {
  run bash -c "docker exec container-test sudo --help"
  [[ "${output}" =~ "usage: sudo" ]]
}

@test "github-cli version" {
  run bash -c "docker exec container-test gh version"
  [[ "${output}" =~ "GitHub from the command line" ]]
}

@test "jq version" {
  run bash -c "docker exec container-test jq --help"
  [[ "${output}" =~ "Usage:	jq" ]]
}

@test "gnupg version" {
  run bash -c "docker exec container-test gpg --help"
  [[ "${output}" =~ "Syntax: gpg" ]]
}

@test "docker version" {
  run bash -c "docker exec container-test docker --help"
  [[ "${output}" =~ "Usage:  docker" ]]
}

@test "bash version" {
  run bash -c "docker exec container-test bash --help"
  [[ "${output}" =~ "Usage:	bash" ]]
}

@test "check locale" {
  run bash -c "docker exec container-test locale"
  [[ "${output}" =~ "LC_ALL=en_US.UTF-8" ]]
}

@test "1password version" {
  run bash -c "docker exec container-test op --version"
  [[ "${output}" =~ "Usage:  op" ]]
}

@test "vault version" {
  run bash -c "docker exec container-test vault -v"
  [[ "${output}" =~ "Usage: vault" ]]
}

@test "describe user circleci" {
  run bash -c "docker exec container-test getent passwd | grep circleci"
  [[ "${output}" =~ "circleci:x:3434:3434" ]]
  [[ "${output}" =~ "/home/circleci" ]]
}

@test "describe user circleci group" {
  run bash -c "docker exec container-test getent group | grep circleci"
  [[ "${output}" =~ "circleci:x:3434:circleci" ]]
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
