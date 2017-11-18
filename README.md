# The Modular Documentation Project Source Repository

## What is the Purpose of the Modular Documentation Project?

To provide documentation teams with a set of resources to assist them as they write user-driven content or convert their current documentation framework to a modular-based documentation framework.

## Why Are We Doing This?

To help the documentation teams become more agile with their documentation.
This agility will help us to better serve our readers with a more purposeful reading experience.
A modular-based content model sets a foundation for innovation.
Modular documentation provides a structure for writing and presenting user-story-based documentation.
User-story-based documentation attempts to address the reader's needs more than focusing on feature-based documentation.
User-story-based documentation also helps the documentation teams with the amount of documents that they have to maintain, by helping them to focus on what really matters.

## Any Questions?

Send an email to our mailing list (ccs-mod-docs@redhat.com).

## Modular Documentation Reference Guide

The Modular Documentation Reference Guide is one of the deliverables for this project.
You can view the latest build of the guide here: https://redhat-documentation.github.io/modular-docs/.

## Repository Structure

This repository uses the following directory structure:

<pre>
.
├── README.md (This file)
├── CONTRIBUTING.md (How do I contribute to this project?)
├── files/ (Template files)
├── images/
    └── *.png (Image files)
├── scripts/
    └── buildGuide.sh (Script to build the books locally)
├── common-content/
    └── attributes.adoc (AsciiDoc files)
├── modular-docs-manual/ (Another book)
    ├── README.md (The README file)
    ├── docinfo.xml (Publican build information)
    ├── master.adoc (Master layout of included modules for the book)
    ├── metadata.ini (Pantheon build information)
    ├── content/
        ├── topics/
            └── *.adoc (AsciiDoc files)
        └── modular-doc-manual.adoc
    ├── images -> ../images/ (Symbolic link)
    └── common-content -> ../common-content/ (Symbolic link)
</pre>

## Contributing

We welcome contributions from everyone who feels they have something of value that all of the community can benefit from. Follow these instructions to start contributing:

https://github.com/redhat-documentation/modular-docs/blob/master/CONTRIBUTING.md

## Building the Books Locally

When you make changes to these books, it is a good practice to do a local test build to verify the book builds successfully and renders as you expect before you submit the merge request back to upstream master.

### Configuring the Build Environment

You can build the book locally using AsciiDoctor.

http://asciidoctor.org/docs/#get-started-with-asciidoctor

### Building the References

The build script in this repository execute a build for each reference:

* An HTML version using `asciidoctor`.

The build script provides a link to the resulting guide in the console output.

To build all of the books, navigate to the root of this directory and type the following command:

    scripts/buildGuides.sh

To build a single book, you can pass the book folder name on the above command line, for example:

    scripts/buildGuides.sh modular-docs-manual

You can also build a single book by navigation to the book folder and executing the `buildScript.sh` script, for example:

    cd modular-docs/modular-docs-manual
    ../scripts/buildGuide.sh
