# The Modular Documentation Project Source Repository

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

We welcome contributions from everyone who feels they have something of value that all of Customer Content Services (CCS) can benefit from. Follow these instructions to start contributing:

https://gitlab.cee.redhat.com/ccs-internal-documentation/Modular_Documentation_Project/blob/master/CONTRIBUTING.md

## Building the Books Locally

When you make changes to these books, it is a good practice to do a local test build to verify the book builds successfully and renders as you expect before you submit the merge request back to upstream master.

### Configuring the Build Environment

You can build the books using either AsciiDoctor or `ccutil`, however, be aware that only `ccutil` catches build errors like invalid xrefs and missing includes.

For that reason, you must install `ccutil` to test the build before you merge your changes. Follow these instructions to install `ccutil`:

https://gitlab.cee.redhat.com/ccs-tools-documentation/docs2drupal-user-guide/blob/master/ccutil-install.adoc

The `ccutil` utility requires Ruby. If you have not installed Ruby, you can use this command to install it:

    dnf -y install ruby

or

    yum -y install ruby

### Building the References

The build scripts in this repository execute two builds for each reference:

* An HTML version using `asciidoctor`. This provides a basic build for people who have not installed `ccutil`.
* An epub/PDF/HTML version using `ccutil`. This build is closer to the Publican build and does better error checking.

They also provide a link to the resulting guides in the console output.

To build all of the books, navigate to the root of this directory and type the following command:

    scripts/buildGuides.sh


To build a single book, you can pass the book folder name on the above command line, for example:

    scripts/buildGuides.sh asciidoc-cookbooks

You can build also build a single book by navigation to the book folder and executing the `buildScript.sh` script, for example:

    cd Modular_Documentation_Project/asciidoc-cookbooks
    ../scripts/buildGuide.sh
