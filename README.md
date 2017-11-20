# The Modular Documentation Project Source Repository

## What is the Purpose of the Modular Documentation Project?

To provide documentation teams with a set of resources to assist them as they write user-driven content or convert their current documentation framework to a modular-based documentation framework.

## Why Are We Doing This?

To help the documentation teams become more agile with their documentation. This agility will help us to better serve our readers with a more purposeful reading experience. A modular-based content model sets a foundation for innovation. Modular documentation provides a structure for writing and presenting user-story-based documentation. User-story-based documentation attempts to address the reader's needs more than focusing on feature-based documentation. User-story-based documentation also helps the documentation teams with the amount of documents that they have to maintain, by helping them to focus on what really matters.

## Any Questions?

Submit an issue in this repository.

## Modular Documentation Reference Guide

The Modular Documentation Reference Guide is one of the deliverables for this project. You can view the latest build of the guide here: https://redhat-documentation.github.io/modular-docs/.

## Repository Structure

This repository uses the following directory structure:

```
.
├── .travis.yml (YAML configuration file for Travis CI)
├── CONTRIBUTING.md (How do I contribute to this project?)
├── README.md (this file)
├── modular-docs-manual/ (Another book)
    ├── README.md (the README file)
    ├── master.adoc (master layout of the book)
    ├── content/
        ├── topics/
            └── *.adoc (AsciiDoc files)
        └── modular-doc-manual.adoc
    ├── files/ (template files)
    ├── images (image files)
    └── common-content
        └── attributes.adoc (common attributes)
```

## Contributing

We welcome contributions from everyone who feels they have something of value that all of the community can benefit from. Follow these instructions to start contributing: [CONTRIBUTING](CONTRIBUTING.md).

## Building the Books Locally

When you make changes to these books, it is a good practice to do a local test build to verify the book builds successfully and renders as you expect before you submit the merge request back to upstream master.

### Configuring the Build Environment

You can build the book locally using AsciiDoctor.

http://asciidoctor.org/docs/#get-started-with-asciidoctor

### Building the References

To build and view the document, run:

```
$ asciidoctor modular-docs-manual/master.adoc
$ <www-browser-of-choice> modular-docs-manual/master.html
```
