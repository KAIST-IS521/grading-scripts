# Grading Scripts

### Motivation

The current version of [teacher's
pet](https://github.com/education/teachers_pet) is not compatible with GitHub
classroom, because they use different naming schemes for repositories. GitHub
classroom automatically creates repositories in the form of
```<reponame>-<userid>```, whereas teacher's pet creates repositories as
```<userid>-<reponame>```. This repository contains a set of scripts that I used
to manage students' repositories.

### Requirement

You need to have a ```repos.txt``` file in the same directory where all the
other scripts are located in. This file contains a list of URLs to students'
repositories.

### Why not use parallel processing?

We should sequentially run git commands, because our school prevents opening
multiple TCP connections at the same time.
