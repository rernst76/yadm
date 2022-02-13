# Shared Dotfile Repo

This repository is intended to be a shared repository for
dotfiles.

In order to use this repository you need to be using [YADM](https://yadm.io/)

Teams and projects should feel free to create a shared branch for projects
that can serve as a starting-point.

For example the following structure could be used:
```text
               ┌────┐
          ┌───►│dev1│
          │    └────┘
          │
          │
┌──────┐  │    ┌───────┐      ┌────┐
│ main ├──┼───►│hitachi├──┬──►│dev1│
└──────┘  │    └───────┘  │   └────┘
          │               │
          │               │   ┌────┐
          │    ┌────┐     └──►│dev2│
          └───►│dev3│         └────┘
               └────┘
```

In this scenario everyone is welcome to have as many top-level branches as they
want for different purposes. Then they can also project-specifc shared starting
points which can be further customized by individuals. Worthy changes can then
be merged back up into the common shared branch via a PR.

For instructions on how to use YADM see [Getting Started](https://yadm.io/docs/getting_started#)

One goal for this repository is to enable easy sharing of useful dotfiles.




