# Chocolatine Project

The Chocolatine project is a DevOps project at Epitech where you will set up a GitHub Actions workflow to enforce good practices and diverse rules in a repository.

## Workflow Features

Using a GitHub Actions workflow, you will need to implement a set of features:

### Checking the coding style

This job will check the coding style of the project codebase. It will be triggered on every push and pull request creation, unless the branch name starts with `ga-ignore-`, in which case the workflow must not be run at all. This job will check for any code style violations and report any issues found.

### Checking that the program compiles correctly

This job will check that the program compiles correctly. It will be triggered on every push and pull request creation, unless the branch name starts with `ga-ignore-`, in which case the workflow must not be run at all. This job will check that the program compiles without errors.

### Running tests

This job will run tests on the program. It will be triggered on every push and pull request creation, unless the branch name starts with `ga-ignore-`, in which case the workflow must not be run at all. This job will run all of the program's tests and report any failures.

### Pushing to the mirror repository

This job will push changes to a mirror repository. It will be triggered on every push and pull request creation, unless the branch name starts with `ga-ignore-`, in which case the workflow must not be run at all. This job will push changes made to the main repository to a mirror repository.

## Secrets

You may need to use secrets to make your workflow successfully run. In this case, you must use secrets. Make sure to store secrets securely and do not share them with anyone.

## Usage

To use the workflow, simply add the YAML file for the workflow to the repository's `.github/workflows` directory. The workflow will then be automatically triggered on every push and pull request creation, unless the branch name starts with `ga-ignore-`.

## Contributors

This project was developed by Marius Pain, as part of the Epitech curriculum.
