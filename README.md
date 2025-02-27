This is pretty much a copypaste from here: https://developer.hashicorp.com/terraform/cloud-docs/policy-enforcement/define-policies/opa#test-policies


The command to do run the tests with an output:

```
# opa test -v . --v0-compatible

FAILURES
--------------------------------------------------------------------------------
data.terraform.tfc.block_auto_apply_runs.test_run_workspace_auto_apply_false: FAIL (68.875µs)

  query:1                                  Enter data.terraform.tfc.block_auto_apply_runs.test_run_workspace_auto_apply_false = _
  block_auto_apply_runs_test.rego:11       | Enter data.terraform.tfc.block_auto_apply_runs.test_run_workspace_auto_apply_false
  block_auto_apply_runs_test.rego:12       | | Fail not data.terraform.tfc.block_auto_apply_runs.deny with input as {"run": {"workspace": {"auto_apply": false}}}
  query:1                                  | Fail data.terraform.tfc.block_auto_apply_runs.test_run_workspace_auto_apply_false = _

SUMMARY
--------------------------------------------------------------------------------
block_auto_apply_runs_test.rego:
data.terraform.tfc.block_auto_apply_runs.test_run_workspace_auto_apply: PASS (172.75µs)
data.terraform.tfc.block_auto_apply_runs.test_run_workspace_auto_apply_false: FAIL (68.875µs)
--------------------------------------------------------------------------------
PASS: 1/2
FAIL: 1/2

# opa version
Version: 1.1.0
Build Commit:
Build Timestamp:
Build Hostname:
Go Version: go1.23.5
Platform: darwin/arm64
Rego Version: v1
WebAssembly: unavailable

```
