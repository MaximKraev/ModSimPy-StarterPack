0.5  Installing Python {#sec6 .section}
----------------------

You might already have Python installed on your computer, but you might
not have the latest version. To use the code in this book, you need
Python 3.6 or later. Even if you have the latest version, you probably
don't have all of the libraries we need.

[]{#hevea_default13}

You could update Python and install these libraries, but I strongly
recommend that you don't go down that road. I think you will find it
easier to use [Anaconda]{style="font-weight:bold"}, which is a free
Python distribution that includes all the libraries you need for this
book (and more).

[]{#hevea_default14}

Anaconda is available for Linux, macOS, and Windows. By default, it puts
all files in your home directory, so you don't need administrator (root)
permission to install it, and if you have a version of Python already,
Anaconda will not remove or modify it.

Start at
[[https://www.anaconda.com/download]{style="font-family:monospace"}](https://www.anaconda.com/download).
Download the installer for your system and run it. You don't need
administrative privileges to install Anaconda, so I recommend you run
the installer as a normal user, not as administrator or root.

I suggest you accept the recommended options. On Windows you have the
option to install Visual Studio Code, which is an interactive
environment for writing programs. You won't need it for this book, but
you might want it for other projects.

By default, Anaconda installs most of the packages you need, but there
are a few more you might have to add. Once the installation is complete,
open a command window. On macOS or Linux, you can use Terminal. On
Windows, open the Anaconda Prompt that should be in your Start menu.

Run the following command (copy and paste it if you can, to avoid
typos):

  -------------------------------------------------------------------
  conda install jupyterlab pandas seaborn sympy beautifulsoup4 lxml
  -------------------------------------------------------------------

Some of these packages might already be installed. Then run this
command:

  -------------------------------
  conda install -c unidata pint
  -------------------------------

That should be everything you need.

