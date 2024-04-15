#!/usr/bin/env bats

@test "sudo version" {
  run bash -c "docker exec circleci-base-image-alpine-edge sudo --version"
  [[ "${output}" =~ "1.9" ]]
}

@test "gettext install" {
  run bash -c "docker exec circleci-base-image-alpine-edge less --version"
  [[ "${output}" =~ "643" ]]
}

@test "gcc version" {
  run bash -c "docker exec circleci-base-image-alpine-edge gcc --version"
  [[ "${output}" =~ "13.2" ]]
}

@test "cmake version" {
  run bash -c "docker exec circleci-base-image-alpine-edge cmake --version"
  [[ "${output}" =~ "3.27" ]]
}
@test "make version" {
  run bash -c "docker exec circleci-base-image-alpine-edge make --version"
  [[ "${output}" =~ "4.4" ]]
}

@test "curl version" {
  run bash -c "docker exec circleci-base-image-alpine-edge curl --version"
  [[ "${output}" =~ "8.5" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-base-image-alpine-edge wget --version"
  [[ "${output}" =~ "1.21" ]]
}

@test "unzip version" {
  run bash -c "docker exec circleci-base-image-alpine-edge unzip --version"
  [[ "${output}" =~ "6.0" ]]
}

@test "gzip version" {
  run bash -c "docker exec circleci-base-image-alpine-edge gzip --version"
  [[ "${output}" =~ "1.13" ]]
}

@test "zip version" {
  run bash -c "docker exec circleci-base-image-alpine-edge zip --version"
  [[ "${output}" =~ "3.0" ]]
}

@test "jq version" {
  run bash -c "docker exec circleci-base-image-alpine-edge jq --version"
  [[ "${output}" =~ "1.7" ]]
}

@test "gnupg version" {
  run bash -c "docker exec circleci-base-image-alpine-edge gpg --version"
  [[ "${output}" =~ "2.4" ]]
}

@test "docker version" {
  run bash -c "docker exec circleci-base-image-alpine-edge docker --version"
  [[ "${output}" =~ "25.0" ]]
}

@test "bash version" {
  run bash -c "docker exec circleci-base-image-alpine-edge bash --version"
  [[ "${output}" =~ "5.2" ]]
}

@test "check locale" {
  run bash -c "docker exec circleci-base-image-alpine-edge locale"
  [[ "${output}" =~ "LC_ALL=en_US.UTF-8" ]]
}

@test "1password version" {
  run bash -c "docker exec circleci-base-image-alpine-edge op --version"
  [[ "${output}" =~ "2.26" ]]
}

@test "teller version" {
  run bash -c "docker exec circleci-base-image-alpine-edge teller version"
  [[ "${output}" =~ "1.5.6" ]]
}

@test "vault version" {
  run bash -c "docker exec circleci-base-image-alpine-edge vault -v"
  [[ "${output}" =~ "1.16" ]]
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
  run bash -c "docker exec circleci-base-image-alpine-edge ls -la /home/circleci"
  [[ "${output}" =~ "circleci circleci" ]]
}

@test "describe /home/circleci/project" {
  run bash -c "docker exec circleci-base-image-alpine-edge ls -la /home/circleci/project"
  [[ "${output}" =~ "circleci circleci" ]]
}

@test "describe /home/circleci/.gnupg" {
  run bash -c "docker exec circleci-base-image-alpine-edge ls -la /home/circleci/.gnupg"
  [[ "${output}" =~ "gpg.conf" ]]
}
