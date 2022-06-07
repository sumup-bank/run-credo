# Run Credo

This action runs the command `mix credo` inside a Docker container.

## Example

A simple usage:

```yaml
steps:
    - uses: actions/checkout@v3

    - name: Run Credo
      uses: sumup-bank/run-credo@v1
```

Adding arguments to `mix credo`:

```yaml
steps:
    - uses: actions/checkout@v3

    - name: Run Credo
      uses: sumup-bank/run-credo@v1
      with:
        args: --help
```

## Inputs

|Variable|Description|Default|Required|
|-|-|-|-|
|args|Arguments to be passed to `mix credo` command|Empty string|No|

## Outputs

None
