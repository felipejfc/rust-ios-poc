# ios rust lib poc

## dependencies
* cargo-lipo -- for simplifying universal lib creation
```cargo install cargo-lipo```

this is needed for compiling for ios with bitcode enabled.

## add rustup targets

```rustup target add aarch64-apple-ios x86_64-apple-ios```

## compile the lib

```
cd rust
cargo lipo --release
```
