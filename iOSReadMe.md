## iOS Documentation

* All the proto files will be extracted from the vault folder 
* Run the following command in terminal to extract swift files from vault and put it in the required directory namely `Sources/SwiftProtoContracts/swift`
```
find vault -name "*.proto" -type f -print0 | xargs -0 protoc --swift_out=Sources/SwiftProtoContracts/swift --swift_opt=Visibility=Public --swift_opt=FileNaming=DropPath 
```
* This will generate swift files from proto which can be used as model to communicate data


Use the following command to generate for vitals and vault
```sh
source generate_swift_files.sh && generate_swift_files
```