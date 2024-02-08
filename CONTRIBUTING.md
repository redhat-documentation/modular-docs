# Contributing Guide for the Modular Documentation Project

## Request GitHub Project Access

Send an email to the Modular Documentation Project mailing list (ccs-mod-docs@redhat.com) asking nicely to be given access to the Modular Documentation Project on GitHub. Please give us your GitHub username and use the following subject line: REQUESTING ACCESS.

## Configuring a Local Copy of the GitHub Project

STEP 1 - Fork your own copy of redhat-documentation/modular-docs:
![image](https://github.com/redhat-documentation/modular-docs/assets/350907/e27b585e-f7f8-4b29-a62a-a0dbd025cebc)

STEP 2 - Go to your fork and copy the SSH link.
![image](https://github.com/redhat-documentation/modular-docs/assets/350907/829fb743-104a-4db1-848e-8a7cd4994376)

STEP 3 - In a terminal, clone your fork:

    git clone git@github.com:_<username>_/modular-docs.git

STEP 4 - Copy the SSH link of redhat-documentation/modular-docs, not your fork, and set it as your upstream remote:

    cd modular-docs
    git remote add upstream git@github.com:redhat-documentation/modular-docs.git

STEP 5 - Verify that you have two remotes, `origin` and `upstream` and check the status of your project:

    git remote -v
    git status

## Contributing Changes

STEP 1 - Create a new branch:

    git checkout -b <new_branch_name>

Example:

    git checkout -b new_edits

STEP 2 - Add content or make edits.

STEP 3 - Add and commit your changes:

    git add <path_to_file>
    git commit -m "<place_your_comments_here>"

 Example:

    git add modular-doc-manual/master.adoc
    git commit -m -s "Updated the master.adoc file"

STEP 4 - Push changes to the remote GitHub repository:

    git push origin <new_branch_name>

Example:

    git push origin new_edits

STEP 5 - Create a new pull request from the GitHub web interface.

STEP 6 - Everyone on the project team will review the merge request and add comments in GitHub. This review process will be open for one week from the day the merge request was submitted. If the merge request is still being actively discussed beyond the one week timeframe, then the merge request will stay open. Once the merge request discussion is resolved, the merge request will be NACK'd or ACK'd based on the comments given.  If no comments are given after a week, then the merge request will be ACK'd.
