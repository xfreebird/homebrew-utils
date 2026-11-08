# Utilities and eSemnBun CLI

Existing utility formulae remain available in this tap.

## eSemnBun on macOS

```sh
brew install xfreebird/utils/esemnbun-cli
```

Installs `esemnbun` and `esemnbun-mcp` for Apple silicon and Intel Macs running macOS 15 or later. The archive is signed and notarized. No background service is enabled.

## eSemnBun on Windows (Scoop)

```powershell
scoop bucket add esemnbun https://github.com/xfreebird/homebrew-utils
scoop install esemnbun/esemnbun-cli
```

Installs the standalone x64 `esemnbun.exe`. Use `esemnbun mcp` for the MCP server.

[Linux, Chocolatey and other package instructions](https://esemnbun.md/packages/).

The update workflow checks the upstream release every six hours and verifies its package-definition archive digest. It modifies only the eSemnBun formula and Scoop manifest. Incomplete upstream releases retain the previous definitions.
