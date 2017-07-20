# Contributing Guide for the Modular Documentation Project

## Request GitHub Project Access

Send an email to the Modular Documentation Project mailing list (ccs-mod-docs@redhat.com) asking nicely to be given access to the Modular Documentation Project on GitHub. Please use the following subject line: REQUESTING ACCESS

## Configuring a Local Copy of the GitHub Project

STEP 1 - Clone the GitHub project locally:

    git clone git@github.com:redhat-documentation/modular-docs.git

STEP 2 - Verify the GitHub project status:

    cd modular-docs
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

STEP 5 - Create a new merge request from the GitHub web interface.

STEP 6 - Send an email to the Modular Documentation Project mailing list (ccs-mod-docs@redhat.com) saying that a merge request was submitted and ask kindly for a review by the project team.

STEP 7 - Everyone on the project team will review the merge request and add comments in GitHub. This review process will be open for one week from the day the merge request was submitted. If the merge request is still being actively discussed beyond the one week timeframe, then the merge request will stay open. Once the merge request discussion is resolved, the merge request will be NACK'd or ACK'd based on the comments given.  If no comments are given after a week, then the merge request will be ACK'd.
