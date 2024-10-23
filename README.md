# MSYS2 Environment Shell

My main shell environment is configured by first install MSYS2 through scoop.

```
scoop install msys2
```

Then `setup-scoop-persist-dir.sh` is invoked to link the Windows home user directory to the MSYS2 persisted home directory, as this is not done by default.

