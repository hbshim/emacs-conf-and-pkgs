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
