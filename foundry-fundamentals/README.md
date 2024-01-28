# Foundry Fundamentals

Resources:

[Cyfrin Updraft - Foundry Fundamentals](https://updraft.cyfrin.io/courses/foundry)

[Foundry Book](http://book.getfoundry.sh/)

[Repo Cyfrin F23](https://github.com/Cyfrin/foundry-full-course-f23)

---
---

## Summary

Create Foundry project: `forge --init`

### Basic Foundry commands

Deploy: `forge create` or `forge script`

`forge script <script> --rpc-url <rpc_url> --account <account_name> --sender <address> --broadcast`

Interact: `cast <subcommand>
`

Local blockchain testnet: `anvil`

---

### Project layout

```
.
├── foundry.toml
├── lib
│   └── forge-std
│       ├── foundry.toml
│       ├── lib
│       ├── LICENSE-APACHE
│       ├── LICENSE-MIT
│       ├── package.json
│       ├── README.md
│       ├── scripts
│       ├── src
│       └── test
├── README.md
├── script
│   └── Counter.s.sol
├── src
│   └── Counter.sol
└── test
    └── Counter.t.sol

10 directories, 10 files
```


