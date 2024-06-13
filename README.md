## snapd-glib

snapd-glib is a library to allow GLib based applications access to snapd, the daemon that controls Snaps.
A snapd-qt library is provided that wraps snapd-glib for Qt based applications.
The following languages / platforms are supported:
  * C
  * C++
  * Vala
  * Python (using GObject introspection)
  * Javacript (using GObject introspection)
  * Qt
  * QML

See [snapcraft.io](https://snapcraft.io) for more information.

## Formatting the sources

Just run the *format-source.sh* script to make *clang-format* modify your changes to ensure that they
follow the project's style conventions.

If you want GIT to check your style before a commit to ensure that it follows the project conventions,
you can create the *.git/hooks/pre-commit* script with this content:

    #!/bin/sh

    ./format-source.sh silent

and give it run permissions. It will do a format check before any commit, thus ensuring that it is
always right.

## Reporting bugs

If you have found an issue with the application, please [file a issue](https://github.com/snapcore/snapd-glib/issues/new) on the [issues list on GitHub](https://github.com/snapcore/snapd-glib/issues).
