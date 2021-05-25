# ios rust lib poc

## dependencies
* [cargo-lipo](https://github.com/TimNN/cargo-lipo) -- for simplifying universal lib creation
```cargo install cargo-lipo```

* [rust-bitcode](https://github.com/getditto/rust-bitcode)
if you need to compile with bitcode enabled. note that this is not compatible with cargo-lipo, so you'll need to manually generate and manage each arch's binary

## add rustup targets
```rustup target add aarch64-apple-ios x86_64-apple-ios```

## compile the lib
```
cd rust
cargo lipo --release
```
