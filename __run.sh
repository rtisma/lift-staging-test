#!/bin/bash

#Copy this file and  rename
scenario_num=$1
base_branch_name="LIFT-3557-resources"
new_branch_name="LIFT-3557-Scenario-${scenario_num}"
git checkout markdown_test
git checkout -b ${new_branch_name}
git checkout ${base_branch_name} -- file.txt
git checkout ${base_branch_name} -- .lift/config.toml
git add -u
git commit -m  "COMMIT-1"
git push origin ${new_branch_name}
gh pr create -B 'main' -t "${new_branch_name}" 

cp ./recursive/other_file.txt ./recursive/other_file2.txt
git add ./recursive/other_file2.txt
git commit -m  "COMMIT-2"
git push origin ${new_branch_name}


