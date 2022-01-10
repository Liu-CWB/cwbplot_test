# -*- coding: utf-8 -*-

from __future__ import unicode_literals
import sys, os

import pydata_sphinx_theme
on_rtd = os.environ.get('READTHEDOCS', None) == 'True'

sys.path.append(os.path.abspath(os.pardir))

__version__ = '1.0'

# -- General configuration -----------------------------------------------------

source_suffix = '.rst'
master_doc = u'index'
project = u'cwbplot'
copyright = u'2016, Cheng-Chin Liu'

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'sphinx'

extlinks = {}

# -- Options for HTML output ---------------------------------------------------

#html_theme = 'default'
html_theme = "pydata_sphinx_theme"
html_static_path = ['../build/_static']



#def setup(app):
    # overrides for wide tables in RTD theme
    #app.add_css_file('theme_overrides.css') # path relative to static

"""
  You might want to uncomment the “latex_documents = []” if you use CKJ characters in your document.
  Because the pdflatex raises exception when generate Latex documents with CKJ characters.
"""
#latex_documents = []
