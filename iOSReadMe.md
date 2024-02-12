## iOS Documentation

* All the proto files will be extracted using below command
```
make swift_gen
```
* This will generate swift files from proto which can be used as model to communicate data


Use the following command to generate for vitals and vault
```sh
source generate_swift_files.sh && generate_swift_files
```