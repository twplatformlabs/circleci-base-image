#!/usr/bin/env bats

@test "sudo version" {
  run bash -c "docker exec circleci-base-image-slim-edge sudo --version"
  [[ "${output}" =~ "1.9.11" ]]
}

@test "curl version" {
  run bash -c "docker exec circleci-base-image-slim-edge curl --version"
  [[ "${output}" =~ "7.85.0" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-base-image-slim-edge wget --version"
  [[ "${output}" =~ "1.21.3" ]]
}

@test "check locale" {
  run bash -c "docker exec circleci-base-image-slim-edge locale"
  [[ "${output}" =~ "LC_ALL=en_US.UTF-8" ]]
}

@test "1password version" {
  run bash -c "docker exec circleci-base-image-slim-edge op --version"
  [[ "${output}" =~ "2.7.1" ]]
}

@test "opw version" {
  run bash -c "docker exec circleci-base-image-slim-edge opw version"
  [[ "${output}" =~ "0.0.11" ]]
}

@test "describe user circleci" {
  run bash -c "docker exec circleci-base-image-slim-edge getent passwd | grep circleci"
  [[ "${output}" =~ "circleci:x:3434:3434" ]]
  [[ "${output}" =~ "/home/circleci" ]]
}

@test "describe user circleci group" {
  run bash -c "docker exec circleci-base-image-slim-edge getent group | grep circleci"
  [[ "${output}" =~ "circleci:x:3434:" ]]
}

@test "describe /home/circleci" {
  run bash -c "docker exec circleci-base-image-slim-edge ls -ld /home/circleci"
  [[ "${output}" =~ "circleci circleci" ]]
}

@test "describe /home/circleci/project" {
  run bash -c "docker exec circleci-base-image-slim-edge ls -ld /home/circleci/project"
  [[ "${output}" =~ "circleci circleci" ]]
}
