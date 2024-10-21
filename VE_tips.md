# Virtual environments

## The need Virtual environments

Working with Python used to get messy and broken when you could install python packages with `apt` and `pip`.
Now in Ubuntu/Mint you get an error message when trying to install a package with `pip` saying `error: externally-managed-environment`.

This is to protect you. But now, when you are following instructions online on installing a package that use pip, you're stuck. Enter virtual environments.

There are various types of virtual environments - here we'll just say that for our purpose a virtual environment is a way of managing the settings and dependencies while working, the context if you will.

## Creating and using a virtual environment

Create:

    python -m venv venv_name

The settings/dependencies/libraries will be stored in the `venv_name`.

Load/activate the virtual environment:

    . ./venv_name/bin/activate

or:

    source venv_name/bin/activate

You should see a change in your shell name (to the left of your $).

**Sanity check**, try the following:

    (venve_name) $ which python3

Should show something like:

    /home/username/.. ../venv_name/bin/python3

Not:

    /usr/bin/python3

Now that it's active you can update pip:

    (venv_name) $ pip install --upgrade pip

And then install any other pip packages you would like!

**You can now work without worrying about package installations messing with your oother projects!**

To leave the virtual environment just use `deactivate`:

    (venv_name) $ deactivate
