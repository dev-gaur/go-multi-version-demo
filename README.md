# go-multi-version-demo
This repo demonstrates a workaround to use multiple versions of a dependency using go mod.

## Problem

If you want to use multiple versions x1.y1.z1 & x2.y2.z2 of a Dependency,then x1 & x2 cannot be same ,i.e., you can use multiple major versions of the dependency in your repository. 

## Solution

We can use `replace` in our go.mod file.

1.  Clone the source code of the dependency package locally in multiple locations as per
    your versions. For eg., 

    for v0.8.1 clone at path : /Users/apple/go/src/github.com/pkg/errorsv0.8.1 and
    run `git checkout v0.8.1` (release tag)

    `go.mod` file should have a part like below :

    ```
    replace github.com/pkg/errors/081 => /Users/apple/go/src/github.com/pkg/errorsv0.8.1
    replace github.com/pkg/errors/091 => /Users/apple/go/src/github.com/pkg/errorsv0.9.1
    ```

    Here, the right side of the `=>` has to be a local path, and the left side is 
    the package name that will be used in the import command in `.go` files.
    Refer to the code files for further clarification.

2.  run `go mod vendor && go build .`

  
  
  
  
### NOTE

the author of the repository managing this dependency case in the repository using `reploce` clause can run `go mod vendor && go build .` to generate the binary and further ditribute the software.


### HOWEVER

the contributors of the repository will have to ensure in their fork, that they do not tinker with the vendored packages. In this demo case, `vendor/github.com/pkg/errors/081` && `vendor/github.com/pkg/errors/091` are the vendored packages.

If the vendored packages are deleted, then the contributor will have to clone and setup the packages at local path, as described in step 1.