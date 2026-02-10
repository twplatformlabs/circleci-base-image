#!/usr/bin/env bats

if [[ -z "${TEST_CONTAINER}" ]]; then
  echo "ERROR: TEST_CONTAINER environment variable is not set"
  exit 1
fi

bash -c "docker exec ${TEST_CONTAINER} gh --version" && echo
bash -c "docker exec ${TEST_CONTAINER} docker --version" && echo
OP_RESULT=$(bash -c "docker exec ${TEST_CONTAINER} op --version")
echo "1Password version ${OP_RESULT}" && echo
bash -c "docker exec ${TEST_CONTAINER} vault --version" && echo
bash -c "docker exec ${TEST_CONTAINER} teller version" && echo
