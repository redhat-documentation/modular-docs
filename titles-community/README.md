# Community build folder (optional)

If your Red Hat product is single-sourced with community, you might be able to use a community-specific build folder like this one, similar to the `titles-enterprise` folder in this example repository. This community folder could contain all Maven or other build-chain requirements to build community titles from the central module or assembly content. This folder is left empty in this example because community options and variants are expansive and highly specific to each project and product.

Most single-sourced repositories need to modify parts of this example repository structure, or disregard it entirely, depending on community needs and objectives. For example, one strategy is to use a community folder where you house all module content and all community build requirements together in a common folder, such that it functions on its own for community builds. The enterprise builds would then pull from this central community folder for the module content using symlinks in the assembly and title folders.

For more information about working with single-sourced community and enterprise repositories, see the following resources:

- [Community collaboration guide](https://redhat-documentation.github.io/community-collaboration-guide/)
- [Creating modular documentation repositories course](https://learning.redhat.com/mod/facetoface/view.php?id=6590)
- [Creating modular documentation repositories agenda](https://docs.google.com/document/d/1XLptcmIaU9ymQoxwC5FIf_VDhBNrHb4zzvUiM8qesEw/edit?usp=sharing) (contains links to example single-sourced repositories)
