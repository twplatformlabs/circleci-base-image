#!/usr/bin/env bats

@test "sudo version" {
  run bash -c "docker exec circleci-base-image-alpine-edge sudo --version"
  [[ "${output}" =~ "1.9" ]]
}

@test "bash version" {
  run bash -c "docker exec circleci-base-image-alpine-edge bash --version"
  [[ "${output}" =~ "5.2" ]]
}

@test "curl version" {
  run bash -c "docker exec circleci-base-image-alpine-edge curl --version"
  [[ "${output}" =~ "8.0" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-base-image-alpine-edge wget --version"
  [[ "${output}" =~ "1.21" ]]
}

@test "check locale" {
  run bash -c "docker exec circleci-base-image-alpine-edge locale"
  [[ "${output}" =~ "LC_ALL=en_US.UTF-8" ]]
}

@test "1password version" {
  run bash -c "docker exec circleci-base-image-alpine-edge op --version"
  [[ "${output}" =~ "2.16" ]]
}

@test "opw version" {
  run bash -c "docker exec circleci-base-image-alpine-edge opw version"
  [[ "${output}" =~ "0.1.0" ]]
}

@test "teller version" {
  run bash -c "docker exec circleci-base-image-alpine-edge teller version"
  [[ "${output}" =~ "1.5.6" ]]
}

@test "describe user circleci" {
  run bash -c "docker exec circleci-base-image-alpine-edge getent passwd | grep circleci"
  [[ "${output}" =~ "circleci:x:3434:3434" ]]
  [[ "${output}" =~ "/home/circleci" ]]
}

@test "describe user circleci group" {
  run bash -c "docker exec circleci-base-image-alpine-edge getent group | grep circleci"
  [[ "${output}" =~ "circleci:x:3434:circleci" ]]
}

@test "describe /home/circleci" {
  run bash -c "docker exec circleci-base-image-alpine-edge ls -ld /home/circleci"
  [[ "${output}" =~ "circleci circleci" ]]
}

@test "describe /home/circleci/project" {
  run bash -c "docker exec circleci-base-image-alpine-edge ls -ld /home/circleci/project"
  [[ "${output}" =~ "circleci circleci" ]]
}
