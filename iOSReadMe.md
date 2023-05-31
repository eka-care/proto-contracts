## iOS Documentation

* All the proto files will be extracted from the vault folder 
* Run the following command in terminal to extract swift files from vault and put it in the required directory namely `Sources/vault/swift`
```
find vault -name "*.proto" -type f -print0 | xargs -0 protoc --swift_out=Sources/vault/swift --swift_opt=Visibility=Public
```
* This will generate swift files from proto which can be used as model to communicate data