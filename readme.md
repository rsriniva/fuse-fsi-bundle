# Fuse FSI Demo JON Bundle
This project contains all the necessary components for creating a JON bundle that will deploy and configure all the components necesary to deploy and demo the Fuse FSI Demo created by Christian Posta from https://github.com/christian-posta/jboss-fuse-fsi-demo.

## Requirements
In order to build the bundle, you will need to download the installation artifacts from http://access.redhat.com or http://jboss.org/products/fuse/overview. Those binaries will need to be put into the software directory.

In addition, you will need to download Apache Derby from http://db.apache.org/derby/releases/release-10.10.2.0.cgi and place it in the software directory as well.

When you clone the project, you will need to either clone using `git clone --recursive http://github.com/bashburn/fsi-fuse-bundle`.

If you have already cloned this repository without the recursive flag, you can do the following:
```
git submodule init
git submodule update
```

## Configuration Notes


`zip -r fsi-fuse-bundle fsi-fuse-bundle -x *.git*` is the command for creating the zip file.
