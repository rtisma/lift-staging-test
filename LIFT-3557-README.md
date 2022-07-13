

# Steps to setup a PR for testing a scenario

## Prequisites
- bash
- git
- gh (https://cli.github.com/)

## Instructions

1. Create the PR
```bash
git checkout LIFT-3557-resources
cp __run.sh run.sh
./run.sh <scenario number>
```

2. When asked interactively what the `Body` of the PR should be, just press `Enter`
3. When asked interactively `What's Next`, select `Submit` and hit `Enter`

