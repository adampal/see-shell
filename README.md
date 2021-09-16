A simple shell program for creating and managing new shell scripts

Run `./utils/initialize-see-shell` to get started.

Create a new shell script by running `mks my-script`

To create a script using Ruby run `mks my-ruby-script ruby` - this will automatically add the Ruby shebang at the start

To uninstall run `./utils/uninstall-see-shell` this will remove all symlinks on your machine.

To push all your custom scripts to a private git repo run `see-shell-push`

To push a script to the public repo and make it available for others to use run `see-shell-push my-public-script`

To remove a shell script you no longer need, run `rms my-old-script`
This will move the script to your deleted folder.  This way, if you have the script on another computer it will be removed the next time you initialize see-shell there too.


