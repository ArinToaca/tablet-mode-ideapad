# tablet-mode-ideapad
Hackily detect tablet mode in order to enable or disable on screen keyboard for Lenovo Ideapad convertible models.

# How to setup

Put it wherever, add it to crontab.

# What it does

When it detects the keyboard hinge on an ideapad convertible, it enables(or disables) the on screen keyboard

# Why?

The latest Ubuntu-20.04 kernel generates an unknown acpi code for the keyboard hinge (10), this is the best i could come up with.
