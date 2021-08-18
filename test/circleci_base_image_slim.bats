#!/usr/bin/env bats

@test "sudo version" {
  run bash -c "docker exec circleci-base-image-slim-edge sudo --version"
  [[ "${output}" =~ "1.9.5" ]]
}

@test "bash version" {
  run bash -c "docker exec circleci-base-image-slim-edge bash --version"
  [[ "${output}" =~ "5.1.4" ]]
}

@test "check locale" {
  run bash -c "docker exec circleci-base-image-slim-edge locale"
  [[ "${output}" =~ "LC_ALL=en_US.UTF-8" ]]
}

@test "secrethub version" {
  run bash -c "docker exec circleci-base-image-slim-edge secrethub --version"
  [[ "${output}" =~ "0.42.1" ]]
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
