Amplify CLI Deploy Action

## Inputs

## `env`

**Required** The name of the environment. Default `"dev"`.

## Example usage

```
uses: actions/checkout@v2
name: Amplify CLI Deploy Action
  uses: martinlarka/amplify-cli-action@v1.0.0
  with:
    env: dev
  env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    AWS_REGION: us-east-1
```
