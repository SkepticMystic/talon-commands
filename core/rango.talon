tag: browser
-

settings():
    # Increase this if you’re playing a game and some keys aren’t registering at all. 
    # You should probably increase it in 16ms increments, e.g. set it to 16ms or 32ms.
    key_hold = 16


tab close <user.rango_tab_marker>:
    user.rango_command_with_target("activateTab", rango_tab_marker)
    user.tab_close_wrapper()

blank this:
    edit.copy()
    sleep(0.1)
    app.tab_open()
    sleep(0.3)
    edit.paste()
    sleep(0.1)
    key("enter")

(autofill | auto fill) <user.rango_target>:
    user.rango_command_with_target("clickElement", rango_target)
    sleep(0.2)
    edit.down()
    sleep(0.5)
    key("enter")
    sleep(0.5)
    key("escape")

(autofill | auto fill) this:
    edit.down()
    sleep(0.5)
    key("enter")
    sleep(0.5)
    key("escape")