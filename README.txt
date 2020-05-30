Let <PATH> be the path to this directory.
To retrive emacs config and packages, run the followings:
$ ln -s <PATH>/.emacs ~/.emacs
$ ln -s <PATH>/.emacs.d ~/.emacs.d

* ln means link;
* '-s' qualifies the link symbolic;
* '-n' means 'dereference' the target (i.e., specify LINKNAME to be treated as a file);
* '-f' means force in the sense that it overwrites pre-existing, if any, link
(There were some suggestions use the option '-n' when linking a directory but I don't see why here.)

These commands create the following symlinks in the home directory (~)
.emacs    ->  <PATH>/.emacs
.emacs.d  ->  <PATH>/.emacs.d

After this, it would be better to byte compile all of the .el files.

For ansi-term mode, make a symlink ~/.terminfo -> <PATH>/.terminfo. Note that the target of the link <PATH>/.terminfo should be adjusted appropriately depending the ocation of emacs. Originally, the termcap database for "eterm-color" was stored in the directory "e" and many other sources say it has to be "e", it had to be "65". Check this by "ls /usr/share/terminfo" and then "sudo find /usr/share/terminfo -name "eterm*"".
