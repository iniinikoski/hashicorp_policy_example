package terraform.tfc.block_auto_apply_runs

import future.keywords

# OPA says on here: PASS - and this is expected (= policy denies)
test_run_workspace_auto_apply if {
    deny with input as {"run": {"workspace": {"name": "worksapce_name", "auto_apply": true}}}
}

# OPA says on here FAIL - but this should PASS as it's "not deny" as auto apply disabled?
test_run_workspace_auto_apply_false if {
    not deny with input as {"run": {"workspace": {"name": "worksapce_name", "auto_apply": false}}}
}