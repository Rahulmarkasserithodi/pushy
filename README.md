# pushy 

Pushy is a simplified version control system inspired by Git. This project implements a subset of Git's core functionalities using shell scripts. 

## Introduction

Pushy is designed to offer a basic yet powerful version control system, ideal for learning and understanding the fundamentals of version control. This project replicates some of the core commands of Git in a simplified manner, providing a hands-on experience in shell scripting and version control mechanics.

## Features

Pushy includes the following commands, each implemented as a shell script:

- `pushy-init`: Initialize a new Pushy repository.
- `pushy-add`: Add files to the staging area.
- `pushy-commit`: Commit changes to the repository.
- `pushy-log`: Display the commit history.
- `pushy-show`: Show file content from a specific commit.
- `pushy-rm`: Remove files from the staging area.


1. Commands are implemented in POSIX-compatible Shell.
2. Error messages match those of the reference implementation.
3. Initial repository structure is flexible, allowing custom internal organization.
4. Some advanced Git features are not included.

## Commands Overview

### pushy-init

The `pushy-init` command creates an empty Pushy repository. It sets up a `.pushy` directory to store the repository data.

```sh
./pushy-init
ls -d .pushy
ls: cannot access '.pushy': No such file or directory
./pushy-init
Initialized empty pushy repository in .pushy
ls -d .pushy
.pushy
./pushy-init
./pushy-init: error: .pushy already exists
```
### pushy-add
The `pushy-add` command adds files to the staging area.
```sh
./pushy-add <file>
```
### pushy-commit
The `pushy-commit` command commits the staged changes to the repository.
```sh
./pushy-commit -m "Commit message"
```
### pushy-log
The `pushy-log` command displays the commit history.
```sh
./pushy-log
```
### pushy-show
The `pushy-show` command shows the file content from a specific commit.
```sh
./pushy-show <commit> <file>
```
### pushy-rm
The `pushy-rm` command removes files from the staging area.
```sh
./pushy-rm <file>
```
Pushy provides a simplified yet effective way to understand and work with version control concepts, making it an excellent tool for educational purposes and basic version control tasks.Pushy provides a simplified yet effective way to understand and work with version control concepts, making it an excellent tool for educational purposes and basic version control tasks.
