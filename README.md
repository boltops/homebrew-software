# Homebrew BoltOps

A [Homebrew tap] for various BoltOps projects.

[Homebrew tap]: https://github.com/Homebrew/brew/blob/master/docs/brew-tap.md

## Usage

Tap this repository:

    brew tap boltops/bolts

Install the packages it contains like any other Homebrew package:

    brew cask install bolts

## Updating

To update the bolts brew a task is provided:

```shell
rake release:update
```

This task reads from our s3 bucket and finds the latest package versions and updates [Casks/bolts.rb].  The version, sha256 and package_name gets updated in the file.

The task is meant to be ran after you have updated the packages in s3 with the [omnibus-bolts] project.
