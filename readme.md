### Install
Manjaro i3 base install. Just copy the files wherever needed. If cloned into a ``~/repos/`` folder like me you should be able to use ``./write.sh`` to install automatically.

### Default programs
- ``pikaur`` AUR helper
- ``sakura`` terminal
- ``keym`` control mouse with keyboard
- ``firefox`` need to enable compact mode in about:config then in customize toolbar

### Console Fonts
Most powerline fonts don't seem to work with the RGB hinting of my setup, the Hack fonts work:

- copy all fonts to ``/usr/share/fonts/ttf`` 
- clear and regenerate fonts: ``fc-cache -f -v``
- confirm installation ``fc-list | grep "Hack"``
- update ``sakura``

### Microsoft Fonts and Office
- ``pikaur -S ttf-ms-fonts``
- ``pikaur -S onlyoffice-bin`` (go make coffee)

### Backgrounds
- change with ``nitrogen``
- point to ``backgrounds`` subfolder
- use the frost background by default

### GTK theme, QT5 theme & icons
 - download **compatibility** Materia Black Frost GTK theme from: https://www.gnome-look.org/p/1318133/ to ``/tmp`` (get the **compatibility version**, not the GNOME versions)
 - download the Black Frost Suru icon pack from: https://www.gnome-look.org/p/1333828
 - ``sudo cp -r /tmp/Material-Black-Frost /usr/share/themes``
   - also copy the icons also to /usr/share/icons
 - ``lxappearance`` (change)
 - ``sudo lxappearance`` (also change)
 - change font to ``Bitstream Vera Sans Roman``
 - download ``pikaur -S adwaita-qt`` and change Qt5 theme settings to dark

### License
These dotfiles are MIT licensed
