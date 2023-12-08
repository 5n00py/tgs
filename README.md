# Task Git Sync (TGS)

Task Git Sync (TGS) is a tool designed to synchronize your
[Taskwarrior](https://taskwarrior.org/) tasks with a Git repository. This
allows for version control and syncing of your tasks across different machines.
This tool is a fork of [amracks/tgs](https://github.com/amracks/tgs) with
additional features and improvements.

## Installation

Before installing TGS, ensure that your `.task` directory (Taskwarrior's data
directory) is set up as a Git repository with a remote upstream. This setup is
essential for TGS to function correctly as it relies on Git to sync task
data.

### Manual Installation
1. Clone tgs: 
    ```bash
    git clone git@gitlab.com:5n00py/tgs
    ```
2. Copy scripts to you hooks directory: 
    ```bash
    tgs && cp *.sh ~/.task/hooks
    ```

### Git Submodule Installation
1. Change do your .task directory:
    ```bash
    cd ~/.task
    ```
2. Add submodule for tgs: 
    ```bash
    git submodule add git@gitlab.com:5n00py/tgs
    ```
3. Symlink all scripts to the hooks directory:
    ```bash
    cd ~/.task/hooks && ln -s
   ../tgs/*.sh ./
   ```

## Usage

After installing TGS, it will automatically sync your Taskwarrior tasks with
the configured Git repository. Ensure your `.task` directory is properly set up
as a Git repository with remote access for seamless synchronization.

## Acknowledgements

This project is a fork from [amracks/tgs](https://github.com/amracks/tgs).
Special thanks to the original author and contributors for their foundational
idea and work.

---

For more information on Taskwarrior and how to integrate it with Git, visit the
[official Taskwarrior documentation](https://taskwarrior.org/docs/).
