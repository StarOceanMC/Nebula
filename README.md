Nebula
==

Custom paper fork used by starocean.ink. The fork is based off of
 the framework used in [Spottedleaf's Concrete](https://github.com/Spottedleaf/Concrete)
  which is based off of [aikar's EMC framework](https://github.com/starlis/empirecraft).

## Contact
QQ Group: 893232828

## License
The PATCHES-LICENSE file describes the license for api & server patches
by Lovely_xianxian found in `./patches/api` and `./patches/server`. Other patches
are either licensed under MIT or another one specified in the patch file itself.

Everything else is licensed under the MIT license. 
See https://github.com/Spottedleaf/Concrete, https://github.com/pl3xgaming/Purpur,
https://github.com/starlis/empirecraft and https://github.com/electronicboy/byof
for the license of material used/modified by this project.

## Plugin developers
In order to use Nebula as a dependency just add the following repo and dependency to your pom:

Nebula maven repository:
 ```xml 
<repository>
    <id>nebula-repo</id>
    <url>https://raw.github.com/StarOceanMC/Maven/repo</url>
</repository>
```
Nebula-API maven dependency:
```xml
<dependency>
    <groupId>xianxian.mc.nebula</groupId>
    <artifactId>nebula-api</artifactId>
    <version>1.15.1-R0.1-SNAPSHOT</version>
    <scope>provided</scope>
 </dependency>
 ```

## Building and setting up
Run the following commands in the root directory:

```
git submodule init
git submodule update
./nebula up
./nebula patch
```

This should initialize the repo such that you can now start modifying and creating 
patches. The folder `Nebula-API` is the api repo and the `Nebula-Server` folder
is the server repo and will contain the source files you will modify.

#### Creating a patch
Patches are effectively just commits in either `Nebula-API` or `Nebula-Server`. 
To create one, just add a commit to either repo and run `./nebula rb`, and a 
patch will be placed in the patches folder. Modifying commits will also modify its 
corresponding patch file.


#### Building

Use the command `./nebula build` to build the api and server. Compiled jars
will be placed under `Nebula-API/target` and `Nebula-Server/target`.

#### Updating Paper upstream

Switch into the directory of the Paper submodule and pull changes in from the 
repository, then run `./nebula up` and `./nebula rb`.
