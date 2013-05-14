homeboy
====/

BASH scripts to keep your local development environment up-to-date across multiple environments. Say hi to your homeboy every morning!


Quick Start
----

Clone the project into ~/.homeboy

    git clone git@github.com:preston/homeboy.git ~/.homeboy
    cp ~/.homeboy/homeboy.conf.defaults ~/.homeboy/homeboy.conf
    echo 'export PATH=~/.homeboy/bin:$PATH' >> ~/.bash_profile

*Start a new terminal* to force your .bash_profile to reload, and edit the ~/.homeboy/homeboy.conf, changing and settings appropriately for this specific systems configuration. When you're done editing settings, just run `homeboy'.

	homeboy

The optional synchronization mechanism works by zipping the configured list of files into a .zip in a synchronized directory managed by Dropbox, SugarSync etc. “Pushing” your current set of files to Dropbox is done via:

	homeboy-push

After pushing, the next time `homeboy’ is run on any configured machine, the .zip file will be unzipped into the home directory of that machine. It’s really not complicated, but saves time by having to make the same change a bunch of times across different machines and platforms, all having subtle differences.



Updating All Your Git Clones
---- 
When using the git updating options (see config file), homeboy assumes your have a single directory where you keep all your clones, such as ~/Developer/git. Every subdirectory that looks like a git clone will have ‘git pull origin master’ run inside it.


Copyright
----

Copyright (c) 2013 Preston Lee. See LICENSE.txt for
further details.
