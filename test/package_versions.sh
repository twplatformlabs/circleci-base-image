#!/usr/bin/env bats

if [[ -z "${TEST_CONTAINER}" ]]; then
  echo "ERROR: TEST_CONTAINER environment variable is not set"
  exit 1
fi

bash -c "docker exec ${TEST_CONTAINER} docker --version"
bash -c "docker exec ${TEST_CONTAINER} op --version"
bash -c "docker exec ${TEST_CONTAINER} vault --version"
bash -c "docker exec ${TEST_CONTAINER} teller version"
