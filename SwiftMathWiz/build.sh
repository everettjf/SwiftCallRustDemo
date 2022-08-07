rm -rf MathWiz.xcframework
rm libmathwiz_macos.a


# cargo install cbindgen
cbindgen --lang c --output include/mathwiz.h

rustup target add x86_64-apple-darwin
cargo build --release --target x86_64-apple-darwin


rustup target add aarch64-apple-darwin
cargo build --release --target aarch64-apple-darwin


find target -type f -name 'libmathwiz.a'


lipo -create \
  target/x86_64-apple-darwin/release/libmathwiz.a \
  target/aarch64-apple-darwin/release/libmathwiz.a \
  -output libmathwiz_macos.a


lipo -info libmathwiz_macos.a

xcodebuild -create-xcframework \
  -library ./libmathwiz_macos.a \
  -headers ./include/ \
  -output MathWiz.xcframework


# zip -r bundle.zip MathWiz.xcframework
# openssl dgst -sha256 bundle.zip
