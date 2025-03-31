#!/usr/bin/env bats

@test "sudo version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge sudo --version"
  [[ "${output}" =~ "1.9" ]]
}

@test "gcc version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge gcc --version"
  [[ "${output}" =~ "14.2" ]]
}

@test "cmake version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge cmake --version"
  [[ "${output}" =~ "3.30" ]]
}

@test "make version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge make --version"
  [[ "${output}" =~ "4.3" ]]
}

@test "curl version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge curl --version"
  [[ "${output}" =~ "8.9" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge wget --version"
  [[ "${output}" =~ "1.24" ]]
}

@test "unzip version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge unzip --version"
  [[ "${output}" =~ "6.0" ]]
}

@test "zip version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge zip --version"
  [[ "${output}" =~ "3.0" ]]
}

@test "bzip2 version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge bzip2 --version"
  [[ "${output}" =~ "1.0" ]]
}

@test "jq version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge jq --version"
  [[ "${output}" =~ "1.7" ]]
}

@test "gnupg version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge gpg --version"
  [[ "${output}" =~ "2.4" ]]
}

@test "docker version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge docker --version"
  [[ "${output}" =~ "28" ]]
}

@test "check locale" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge locale"
  [[ "${output}" =~ "LC_ALL=en_US.UTF-8" ]]
}

@test "1password version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge op --version"
  [[ "${output}" =~ "2.30" ]]
}

@test "vault version" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge vault -v"
  [[ "${output}" =~ "1.19" ]]
}

@test "describe user circleci" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge getent passwd | grep circleci"
  [[ "${output}" =~ "circleci:x:3434:3434" ]]
  [[ "${output}" =~ "/home/circleci" ]]
}

@test "describe user circleci group" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge getent group | grep circleci"
  [[ "${output}" =~ "circleci:x:3434:" ]]
}

@test "describe /home/circleci" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge ls -la /home/circleci"
  [[ "${output}" =~ "circleci circleci" ]]
}

@test "describe /home/circleci/project" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge ls -la /home/circleci/project"
  [[ "${output}" =~ "circleci circleci" ]]
}

@test "describe /home/circleci/.gnupg" {
  run bash -c "docker exec circleci-base-image-ubuntu-edge ls -la /home/circleci/.gnupg"
  [[ "${output}" =~ "gpg.conf" ]]
}
