# runj

runj is a written in [V](https://vlang.io) experimental implementation of [OCI-compatible runtime](https://github.com/opencontainers/runtime-spec) for [FreeBSD](https://www.freebsd.org/) [jails](https://docs.freebsd.org/en/books/handbook/jails).

Project is inspired by [runj](https://github.com/samuelkarp/runj) developing by [Samuel Karp](https://github.com/samuelkarp).

Next important note from [samuelkarp/runj README](https://github.com/samuelkarp/runj/blob/main/README.md) is also actual for this project.

> **Important**:
> runj is a proof-of-concept and the implementation has not been evaluated for its security.
> Do not use runj on a production system.
> Do not run workloads inside runj that rely on a secure configuration.
> This is a personal project, not backed by the author's employer.

## Status

Project is in very early development stage.

## Build

At first you need [V](https://vlang.io) compiler. Follow next steps to install:
```sh
cd project/dir
git clone https://github.com/vlang/v
cd v
make
./v symlink
```
or see more [here](https://github.com/vlang/v#installing-v-from-source).

Then get runj code and build.
```sh
cd project/dir
git clone https://github.com/apoprotsky/runj.git
cd runj
make build
```
Built executable will be in `project/dir/runj/dist` directory.

## V language

[V language](https://vlang.io) is a new language with go-like syntax and lot of interesting features which allows to build effective compact executables.
