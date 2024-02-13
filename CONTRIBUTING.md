# Contributor's guide for the Modular Documentation Project

## Getting started

### Request project access

To join the Modular Documentation Project:

- **Email a request** to the Modular Documentation Project mailing list at `ccs-mod-docs@redhat.com`.
  - Use "REQUESTING ACCESS" as the subject line.
  - Include your GitHub username for access.

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
   git push -f origin HEAD
   ```

   Example:

   ```bash
   git add modular-doc-manual/master.adoc
   git commit -m "Updated the master.adoc file"
   git push -f origin HEAD
   ```

4. **Create a pull request** by opening the link in the command output.

   Example:

   ```bash
   remote: Create a pull request for '<new_branch_name>' on GitHub by visiting:
   remote:      https://github.com/rolfedh/modular-docs/pull/new/<new_branch_name>
   ```

### Review and merge

**Request team review**: The project team typically reviews your pull request and provides feedback within a week. If discussions extend beyond this period, the review will continue until resolved.

- **Approval**: Pull requests are approved (ACK'd) or rejected (NACK'd) based on team feedback. Uncommented requests are automatically approved after one week.
