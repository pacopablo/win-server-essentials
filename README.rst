Windows Server Essential Tools
==============================

Instructions for creating an ISO of essential Windows Server utilities, along
with script to install them all.

The following instuctions are for OS X as that is my main workstation.  There
is nothing in the overall process specific to OS X.  One need only:

* Download programs
* Create ISO of programs

Essential Tools
----------------

These are tools that every Windows Server should have.  They will make things
easier and open up possibilities.  Please let me know of other tools that you
think are essential

Download the following tools:

* `Google Chrome`_: because IE, especially with it's default enabled IESC is
  just plain annoying [#f1]_

* `Active Python`_: simply because Python is awesome.  Active Python also
  installs the win32 integration properly

* Git_
* Vim_: Vim may not be for everyone, but if it's for you, it's hard to be
  without the installer from the Cream_ project allows for silent installs.

* PuTTY_: pretty much the one and only SSH client on Windows
* 7zip_: The solution for all your (de)compression needs
* BGInfo_: Very useful info, especially when using RDP to access servers
* `Notepad++`_: A usable notepad replacement

**(Optional)**

* `Foxit PDF Reader`_: A lightweight replacement for PDF viewing

OS X
-----

* Place all of the above downloads in a folder, along with the
  ``install_server_essentials.cmd`` script from this project.

* Open up ``Disk Utility``
* Go to ``File->New->Disk Image from Folder`` or press ``CMD-SHIFT-N``
* Select the folder containing the programs and installation script
* Select ``DVD/CD master``
* Specify a location and filename for the new image
* Open up ``Terminal``
* Run the following, replacing ``<filename>`` and ``<source>`` with the proper
  paths.::

   hdiutil makehybrid -iso -joliet -o <filename>.iso <source>.cdr



.. links

.. _Google Chrome: http://www.google.com/chrome/eula.html?msi=true
.. _Active Python: http://downloads.activestate.com/ActivePython/releases/2.7.2.5/ActivePython-2.7.2.5-win64-x64.msi
.. _Git: http://msysgit.googlecode.com/files/Git-1.7.10-preview20120409.exe
.. _Vim: http://sourceforge.net/projects/cream/files/Vim/7.3.480/gvim-7-3-480.exe/download
.. _Cream: http://cream.sourceforge.net/
.. _PuTTY: http://the.earth.li/~sgtatham/putty/latest/x86/putty-0.62-installer.exe
.. _7zip: http://downloads.sourceforge.net/sevenzip/7z920-x64.msi
.. _BGInfo: https://github.com/pacopablo/bginfosetup
.. _Notepad++: http://download.tuxfamily.org/notepadplus/6.1.1/npp.6.1.1.Installer.exe
.. _Foxit PDF Reader: http://www.foxitsoftware.com/Secure_PDF_Reader/

.. footnotes

.. rubric:: Footnotes

.. [#f1] I have had mixed success with downloading the .msi on  Mac.  usually
         Google just sends a .dmg.  Downloading on windows will yield a .msi
