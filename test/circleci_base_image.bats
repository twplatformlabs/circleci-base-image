#!/usr/bin/env bats

setup() {
  if [[ -z "${TEST_CONTAINER}" ]]; then
    echo "ERROR: TEST_CONTAINER environment variable is not set"
    echo "Example:"
    echo "  TEST_CONTAINER=my-container bats tests.bats"
    exit 1
  fi
}

@test "gcc available" {
  run bash -c "docker exec ${TEST_CONTAINER} gcc --help"
  [[ "${output}" =~ "Usage: gcc" ]]
}

@test "cmake available" {
  run bash -c "docker exec ${TEST_CONTAINER} cmake --help"
  [[ "${output}" =~ "cmake [options]" ]]
}

@test "make available" {
  run bash -c "docker exec ${TEST_CONTAINER} make --help"
  [[ "${output}" =~ "Usage: make" ]]
}

@test "curl available" {
  run bash -c "docker exec ${TEST_CONTAINER} curl --help"
  [[ "${output}" =~ "Usage: curl" ]]
}

@test "wget available" {
  run bash -c "docker exec ${TEST_CONTAINER} wget --help"
  [[ "${output}" =~ "Usage: wget" ]]
}

@test "unzip available" {
  run bash -c "docker exec ${TEST_CONTAINER} unzip --help"
  [[ "${output}" =~ "Usage: unzip" ]]
}

@test "zip available" {
  run bash -c "docker exec ${TEST_CONTAINER} zip --help"
  [[ "${output}" =~ "zip [-options]" ]]
}

@test "bzip2 available" {
  run bash -c "docker exec ${TEST_CONTAINER} bzip2 --help"
  [[ "${output}" =~ "usage: bzip2" ]]
}

@test "sudo available" {
  run bash -c "docker exec ${TEST_CONTAINER} sudo --help"
  [[ "${output}" =~ "usage: sudo" ]]
}

@test "github-cli available" {
  run bash -c "docker exec ${TEST_CONTAINER} gh --help"
  [[ "${output}" =~ "GitHub from the command line" ]]
}

@test "jq available" {
  run bash -c "docker exec ${TEST_CONTAINER} jq --help"
  [[ "${output}" =~ "Usage:	jq" ]]
}

@test "gnupg available" {
  run bash -c "docker exec ${TEST_CONTAINER} gpg --help"
  [[ "${output}" =~ "Syntax: gpg" ]]
}

@test "docker available" {
  run bash -c "docker exec ${TEST_CONTAINER} docker --help"
  [[ "${output}" =~ "Usage:  docker" ]]
}

@test "bash available" {
  run bash -c "docker exec ${TEST_CONTAINER} bash --help"
  [[ "${output}" =~ "Usage:	bash" ]]
}

@test "check locale" {
  run bash -c "docker exec ${TEST_CONTAINER} locale"
  [[ "${output}" =~ "LC_ALL=en_US.UTF-8" ]]
}

@test "1password available" {
  run bash -c "docker exec ${TEST_CONTAINER} op --help"
  [[ "${output}" =~ "Usage:  op" ]]
}

@test "vault available" {
  run bash -c "docker exec ${TEST_CONTAINER} vault --help"
  [[ "${output}" =~ "Usage: vault" ]]
}

@test "teller available" {
  run bash -c "docker exec ${TEST_CONTAINER} teller --help"
  [[ "${output}" =~ "Usage: teller" ]]
}

@test "describe user circleci" {
  run bash -c "docker exec ${TEST_CONTAINER} getent passwd | grep circleci"
  [[ "${output}" =~ "circleci:x:3434:3434" ]]
  [[ "${output}" =~ "/home/circleci" ]]
}

@test "describe /home/circleci" {
  run bash -c "docker exec ${TEST_CONTAINER} ls -la /home/circleci"
  [[ "${output}" =~ "circleci circleci" ]]
}

@test "describe /home/circleci/project" {
  run bash -c "docker exec ${TEST_CONTAINER} ls -la /home/circleci/project"
  [[ "${output}" =~ "circleci circleci" ]]
}

@test "describe /home/circleci/.gnupg" {
  run bash -c "docker exec ${TEST_CONTAINER} ls -la /home/circleci/.gnupg"
  [[ "${output}" =~ "gpg.conf" ]]
}
