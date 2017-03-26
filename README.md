# homebrew-quilt

This repository contains the [Homebrew](https://github.com/Homebrew/brew) tap for
[Quilt](quilt.io).

## Installation

Install Homebrew, and run `brew install quilt/quilt/quilt`.

## Updating a Release

Modify the [formula](Formula/quilt.rb) so that `url` points to the source code
tarball for the new release, and modify `sha256` to be its sha256 hash. Then,
simply push the updated formula.

The hash can be generated with the following command:
```
$ curl -sL $TARBALL_URL | shasum -a 256
```
