#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0
#
# Tests the data types model: every example in examples/valid/ must pass LinkML
# validation and every example in examples/invalid/ must fail.
#
# Environment: LINKML (default linkml-validate).
set -u
here="$(cd "$(dirname "$0")" && pwd)"
linkml=${LINKML:-linkml-validate}
model="$here/data-types.yaml"
fail=0
while IFS= read -r f; do
  if ! $linkml -s "$model" -C Examples "$f" >/dev/null 2>&1; then
    echo "FAIL: valid example rejected: $f"; $linkml -s "$model" -C Examples "$f" 2>&1 | tail -3; fail=1
  fi
done < <(find "$here/examples/valid" -name '*.yaml' | sort)
while IFS= read -r f; do
  if $linkml -s "$model" -C Examples "$f" >/dev/null 2>&1; then
    echo "FAIL: invalid example accepted: $f"; fail=1
  fi
done < <(find "$here/examples/invalid" -name '*.yaml' | sort)
[ $fail -eq 0 ] && echo "PASS"
exit $fail
