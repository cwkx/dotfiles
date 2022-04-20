### Install
Manjaro i3 base install. Just copy the files wherever needed, for example clone into a ``~/repos/`` folder and use ``./write.sh`` to install automatically.

### Default programs
- ``vim`` editor
- ``pikaur`` AUR helper
- ``sakura`` terminal
- ``keym`` control mouse with keyboard
- ``firefox`` need to enable compact mode in about:config then in customize toolbar
- ``pulseaudio`` type in the ``install_pulse`` to run the Manjaro install script at the beginning. For me it's better at managing the USB devices changing the device order.
- ``frescobaldi`` LilyPond music editor
- ``zim`` for writing books/notes/wiki
- ``code`` for programming

### Console Fonts
Most powerline fonts don't seem to work with the RGB hinting of my setup, the Hack fonts work:

- copy all fonts to ``/usr/share/fonts/ttf`` 
- clear and regenerate fonts: ``fc-cache -f -v``
- confirm installation ``fc-list | grep "Hack"``
- update ``sakura``

### Microsoft Fonts and Office
- ``pikaur -S ttf-ms-fonts``
- ``pikaur -S onlyoffice-bin`` (go make coffee)

### Desktop Backgrounds
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

### Frescobaldi Music
 - ``frescobaldi`` and ``freepats-general-midi``, ``portmidi``
 - use the timbres of heaven sound font: https://musescore.org/en/handbook/3/soundfonts-and-sfz-files
 - rename ``toh.sf2`` and copy ``sudo mv toh.sf2 /usr/share/soundfonts/
 - start midi server manually with ``fluidsynth -a pulseaudio -m alsa_seq -l -p 15137 -s /usr/share/soundfonts/toh.sf2``
 - install ``#Ashes`` frescobaldi scheme and change preview background to be near white: https://github.com/frescobaldi/frescobaldi-themes/tree/master/themes

### License
These dotfiles are MIT licensed
