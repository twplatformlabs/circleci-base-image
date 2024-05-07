#!/usr/bin/env bats

@test "sudo version" {
  run bash -c "docker exec circleci-base-image-slim-edge sudo --version"
  [[ "${output}" =~ "1.9" ]]
}

@test "gcc version" {
  run bash -c "docker exec circleci-base-image-slim-edge gcc --version"
  [[ "${output}" =~ "13.2" ]]
}

@test "cmake version" {
  run bash -c "docker exec circleci-base-image-slim-edge cmake --version"
  [[ "${output}" =~ "3.29" ]]
}

@test "make version" {
  run bash -c "docker exec circleci-base-image-slim-edge make --version"
  [[ "${output}" =~ "4.3" ]]
}

@test "curl version" {
  run bash -c "docker exec circleci-base-image-slim-edge curl --version"
  [[ "${output}" =~ "8.7" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-base-image-slim-edge wget --version"
  [[ "${output}" =~ "1.24" ]]
}

@test "unzip version" {
  run bash -c "docker exec circleci-base-image-slim-edge unzip --version"
  [[ "${output}" =~ "6.0" ]]
}

@test "zip version" {
  run bash -c "docker exec circleci-base-image-slim-edge zip --version"
  [[ "${output}" =~ "3.0" ]]
}

@test "bzip2 version" {
  run bash -c "docker exec circleci-base-image-slim-edge bzip2 --version"
  [[ "${output}" =~ "1.0" ]]
}

@test "jq version" {
  run bash -c "docker exec circleci-base-image-slim-edge jq --version"
  [[ "${output}" =~ "1.7" ]]
}

@test "gnupg version" {
  run bash -c "docker exec circleci-base-image-slim-edge gpg --version"
  [[ "${output}" =~ "2.2" ]]
}

@test "docker version" {
  run bash -c "docker exec circleci-base-image-slim-edge docker --version"
  [[ "${output}" =~ "26" ]]
}

@test "check locale" {
  run bash -c "docker exec circleci-base-image-slim-edge locale"
  [[ "${output}" =~ "LC_ALL=en_US.UTF-8" ]]
}

@test "1password version" {
  run bash -c "docker exec circleci-base-image-slim-edge op --version"
  [[ "${output}" =~ "2.27" ]]
}

@test "teller version" {
  run bash -c "docker exec circleci-base-image-slim-edge teller version"
  [[ "${output}" =~ "1.5.6" ]]
}

@test "vault version" {
  run bash -c "docker exec circleci-base-image-slim-edge vault -v"
  [[ "${output}" =~ "1.16" ]]
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
  run bash -c "docker exec circleci-base-image-slim-edge ls -la /home/circleci"
  [[ "${output}" =~ "circleci circleci" ]]
}

@test "describe /home/circleci/project" {
  run bash -c "docker exec circleci-base-image-slim-edge ls -la /home/circleci/project"
  [[ "${output}" =~ "circleci circleci" ]]
}

@test "describe /home/circleci/.gnupg" {
  run bash -c "docker exec circleci-base-image-slim-edge ls -la /home/circleci/.gnupg"
  [[ "${output}" =~ "gpg.conf" ]]
}
