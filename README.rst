Kate Syntax Files
-----------------
A set of new or modified syntax highlight definitions for the `Kate text editor <http://www.kde.org/applications/utilities/kate/>`_.

Nginx
'''''
- Syntax definition for the configuration files of the `Nginx <http://nginx.com/>`_ web server.
- The nginx-keywords.sh script can be used to automatically updated the keyword lists from the official vim definitions.

systemd
'''''''
- Syntax definition for `systemd <http://www.freedesktop.org/wiki/Software/systemd/>`_ units with keywords extracted from the man pages.
- The systemd-keywords.sh script can be used to automatically updated the keyword lists from the man pages.

Exim
''''
- Syntax definition for `Exim's filters <https://www.exim.org/exim-html-current/doc/html/spec_html/ch-systemwide_message_filtering.html>`_.
- There is no clear file extension to be used for this definition.
- The file should contain the commend <code># Exim filter</code> as exim's documentation.

YAML
''''
- Implemented indentation based folding in the editor.
- Associated syntax with the .sls file extension (`Salt <https://saltstack.com/>`_ state files).

Python
''''''
- Implemented highlighting for identifiers that resemble a class name (IE: MyClass).

Smarty
''''''
- Syntax definition for the `Smarty templating engine <http://www.smarty.net>`_ for PHP.

Vue
'''
- Vue component bundle comprising of CSS + HTML + JavaScript in the same file.
See https://github.com/vuejs/vue-component-compiler.

IPFW
''''
- Syntax definition for BSD's ipfw firewall rules.

Installation
------------
Copy the xml files in ~/.kde4/share/apps/katepart/syntax for KDE4 or ~/.local/share/katepart5/syntax for KF5.

Resources
---------

- `Original Kate syntax definitions <https://kate-editor.org/syntax/data>`_
- `Working with Syntax Highlighting <https://docs.kde.org/stable5/en/applications/katepart/highlight.html>`_

LICENSE
-------
Copyright (c) 2010-2017 Massimiliano Torromeo

Free software released under the terms of the BSD license.

Contacts
--------

* Massimiliano Torromeo <massimiliano.torromeo@gmail.com>
