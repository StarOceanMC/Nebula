Nebula
==
Custom [Paper](https://github.com/PaperMC/Paper) fork used by starocean.ink.

## Contact
QQ Group: 893232828

## License
The PATCHES-LICENSE file describes the license for api & server patches
by the Star Ocean staffs found in `./patches/api` and `./patches/server`. Other patches
are either licensed under MIT or another one specified in the patch file itself.

Everything else is licensed under the MIT license. 
See [Paper](https://github.com/PaperMC/Paper)
for the license of material used/modified by this project.

## Plugin developers
In order to use nebula as a dependency you need to compile the API yourself and 
install to your local maven repository.

## Building and setting up
Run the following commands in the root directory:

```
./gradlew applyPatches
```

This should initialize the repo such that you can now start modifying and creating 
patches. The folder `nebula-api` is the api repo and the `nebula-server` folder
is the server repo and will contain the source files you will modify.

#### Creating a patch
Patches are effectively just commits in either `nebula-api` or `nebula-server`. 
To create one, just add a commit to either repo and run `./gradlew rebuildPatches`, and a 
patch will be placed in the patches folder. Modifying commits will also modify its 
corresponding patch file.


#### Building

Use the command `./nebula build` to build the api and server. Compiled jars
will be placed under `Nebula-API/target` and `Nebula-Server/target`.

#### Updating Paper upstream

Update the ref name of Paper in `gradle.properties`, and run `./gradlew applyPatches`.