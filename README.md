# policy-library

![GitHub issues](https://img.shields.io/github/issues/abbeylabs/policy-library)
![GitHub](https://img.shields.io/github/license/abbeylabs/policy-library)

Public registry for governing security and access to cloud and data infrastructure

## Usage

1. Browse to a module in [library](src/abbey)
2. Copy the module to your project
3. `import` functions or policies you want to use
   ```
   import data.abbey.functions
   
   allow[msg] {
     functions.expire_at("1m")
     msg := "revoke access after 1 minute"
   }
   ```

## Testing

```shell
opa test . -v
```

## Contributing

Development happens in the [GitHub repo](https://github.com/abbeylabs/policy-library):

- [Releases](https://github.com/abbeylabs/policy-library/releases)
- [Issues](https://github.com/abbeylabs/policy-library/issues)

## License

This project is licensed under the Apache 2.0 license. See [LICENSE](LICENSE) for more details.
