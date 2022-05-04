### Install
Manjaro i3 base install. Just copy the files wherever needed, for example clone into a ``~/repos/`` folder and use ``./write.sh`` to install automatically.

### Default programs
- ``vim`` editor (vanilla)
- ``pikaur`` AUR helper
- ``sakura`` terminal (#1e1e1e background)
- ``keym`` control mouse with keyboard (see my public github repo)
- ``firefox`` need to enable compact mode in about:config then in customize toolbar
- ``pulseaudio`` type in the ``install_pulse`` to run the Manjaro install script at the beginning. For me it's better at managing the USB devices changing the device order. Note (2022), I had to install pa-applet-git and modify the install_pulse script.
- ``frescobaldi`` LilyPond music editor
- ``pinta`` for image editing ``gcolor2`` for colour picking
- ``zim`` for writing books/notes/ideas/research/wiki
- ``code`` for programming
- ``texlive-most`` and ``biber`` for LaTeX

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
 - ``frescobaldi``
 - to make MIDI playback work ``freepats-general-midi`` and ``portmidi``
 - use the timbres of heaven sound font: https://musescore.org/en/handbook/3/soundfonts-and-sfz-files
 - rename ``toh.sf2`` and copy ``sudo mv toh.sf2 /usr/share/soundfonts/``
 - start midi server manually with ``fluidsynth -a pulseaudio -m alsa_seq -l -p 15137 -s /usr/share/soundfonts/toh.sf2`` (I usually put this in a ``midi.sh`` bash script by my music so I get the right soundfont per composition)
 - install ``#Ashes`` frescobaldi scheme and change preview background to be near white: https://github.com/frescobaldi/frescobaldi-themes/tree/master/themes

### License
These dotfiles are MIT licensed
