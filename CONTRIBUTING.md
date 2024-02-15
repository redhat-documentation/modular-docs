# Contributor's guide for the Modular Documentation Project

## Getting started

### Request project access

To join the Modular Documentation Project, email `ccs-mod-docs@redhat.com` with "REQUESTING ACCESS" in the subject and your GitHub username in the body.

### Set up your workspace

#### Fork the repository

1. **Fork** the [Modular Docs Repository](https://github.com/redhat-documentation/modular-docs) on GitHub. For more information, see GitHub's [Forking a repository](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo#forking-a-repository) topic.

#### Clone your fork

2. **Clone** your fork to your local machine:

   ```bash
   git clone git@github.com:<username>/modular-docs.git
   ```

   For more information, see GitHub's [Cloning your forked repository](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo#cloning-your-forked-repository) topic.

#### Configure an upstream remote

3. **Configure an upstream remote** to sync with the original repository:

   ```bash
   cd modular-docs
   git remote add upstream git@github.com:redhat-documentation/modular-docs.git
   ```

   For more information, see GitHub's [Configuring git to sync your fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo#configuring-git-to-sync-your-fork-with-the-upstream-repository) topic.

#### Verify the remotes

4. **Verify the remotes** and check your project's status:

   ```bash
   git remote -v
   git status
   ```

   The output should look like this:

   ```
   origin	https://github.com/<username>/modular-docs.git (fetch)
   origin	https://github.com/<username>/modular-docs.git (push)
   upstream	https://github.com/redhat-documentation/modular-docs.git (fetch)
   upstream	https://github.com/redhat-documentation/modular-docs.git (push)
   On branch main
   Your branch is up to date with 'origin/main'.

   nothing to commit, working tree clean
   ```

## Making contributions

### Stay updated

* **Prepare your main branch**:

   ```bash
   git checkout main
   git fetch upstream main
   git rebase upstream/main  
   git switch -c <new_branch_name>
   ```

   Example:

   ```bash
   git switch -c create_master_adoc
   ```

### Make your changes

1. **Edit content** or add new material as needed.

2. **Stage, commit, and push** your updates:

   ```bash
   git add <path_to_file>
   git commit -m "<your_commit_message_here>"
   git push origin HEAD
   ```

   Example:

   ```bash
   git add modular-doc-manual/master.adoc
   git commit -m "Updated the master.adoc file"
   git push origin HEAD
   ```

4. **Create a pull request** by opening the link in the command output.

   Example:

   ```bash
   remote: Create a pull request for '<new_branch_name>' on GitHub by visiting:
   remote:      https://github.com/rolfedh/modular-docs/pull/new/<new_branch_name>
   ```

### Requesting a team review for your PR

 1. **Initiate a review** by adding `fcc-review-board` under *Reviewers* in the PR and posting a request in [#ccs-mod-docs-steering-committee](https://redhat.enterprise.slack.com/archives/C04QRCA35K8) (private) or [#forum-ccs-mod-docs](https://redhat.enterprise.slack.com/archives/C04RPJLJJ9E) (public) on Slack.

 2. **Engage with feedback** and resolve any issues or suggestions raised by reviewers.

 3. **Follow up**, if needed, by gently reminding reviewers or reposting to the Slack channel after you make significant changes.

 4. **Close the issue**: After your PR gains the necessary approvals and a review board member has merged it, close the issue associated with your PR.
