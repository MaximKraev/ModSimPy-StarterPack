0.6  Copying my files {#sec7 .section}
---------------------

The code for this book is available from
[[https://github.com/AllenDowney/ModSimPy]{style="font-family:monospace"}](https://github.com/AllenDowney/ModSimPy),
which is a [Git repository]{style="font-weight:bold"}. Git is a software
tool that helps you keep track of the programs and other files that make
up a project. A collection of files under Git's control is called a
repository (the cool kids call it a "repo\"). GitHub is a hosting
service that provides storage for Git repositories and a convenient web
interface.

[]{#hevea_default15} []{#hevea_default16} []{#hevea_default17}

Before you download these files, I suggest you copy my repository on
GitHub, which is called [forking]{style="font-weight:bold"}. If you
don't already have a GitHub account, you'll need to create one.

Use a browser to view the homepage of my repository at
[[https://github.com/AllenDowney/ModSimPy]{style="font-family:monospace"}](https://github.com/AllenDowney/ModSimPy).
You should see a gray button in the upper right that says
[Fork]{style="font-family:sans-serif"}. If you press it, GitHub will
create a copy of my repository that belongs to you.

Now, the best way to download the files is to use a [Git
client]{style="font-weight:bold"}, which is a program that manages git
repositories. You can get installation instructions for Windows, macOS,
and Linux at
[[https://modsimpy.com/getgit]{style="font-family:monospace"}](https://modsimpy.com/getgit).

In Windows, I suggest you accept the options recommended by the
installer, with two exceptions:

-   As the default editor, choose `nano` instead of `vim`.
-   For "Configuring line ending conversions\", select "Check out as is,
    commit as is\".

For macOS and Linux, I suggest you accept the recommended options.

Once the installation is complete, open a command window. On Windows,
open Git Bash, which should be in your Start menu. On macOS or Linux,
you can use Terminal.

To find out what directory you are in, type `pwd`, which stands for
"print working directory\". On Windows, most likely you are in
`Users\\yourusername`. On MacOS or Linux, you are probably in your home
directory, `/home/yourusername`.

The next step is to copy files from your repository on GitHub to your
computer; in Git vocabulary, this process is called
[cloning]{style="font-weight:bold"}. Run this command:

git clone https://github.com/YourGitHubUserName/ModSimPy

Of course, you should replace `YourGitHubUserName` with your GitHub user
name. After cloning, you should have a new directory called `ModSimPy`.

If you don't want to use Git, you can download my files in a Zip archive
from
[[https://modsimpy.com/zip]{style="font-family:monospace"}](https://modsimpy.com/zip).
You will need a program like WinZip or gzip to unpack the Zip file. Make
a note of the location of the files you download.

