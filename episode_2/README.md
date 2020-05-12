# Readme file for episode two of VSCode for Fortran
You can find all important information from the video listed within this file.

## Content of episode two
* Introduction to the editor
* Setting up rulers
* Installation of extensions
    * Modern Fortran 
    * Fortran IntelliSense (Requires fortls)
    * Install Fortran-language-server using pip

## Details on content

### Introduction to the editor
You can find the documentation as well as tutorials for Visudal Studio Code at the VS Code [documentation page](https://code.visualstudio.com/docs). A comprehensive list of shortcuts is available [here](https://code.visualstudio.com/shortcuts).

### Rulers
You can set rulers in the settungs.json file which you will find in the setting menu (Ctrl + ,) of VS Code. Simply add the entry given below to set a ruler at column 132.
```
    "editor.rulers": [
        132
    ],
    "workbench.colorCustomizations": {
        "editorRuler.foreground": "#458cff"
    },
```
Unofrtunately, I haven't yet found a way to customize the rulers such that they will be set according to the Fortran standard you are using. If I find something in the futere, I will let you know.

### Installation of extensions
For syntax highlighting, error messaging etc. yiu can install the [Modern Fortran extension](https://marketplace.visualstudio.com/items?itemName=krvajalm.linter-gfortran).

To get helpful features like auto-completion etc. install the [Fortran IntelliSense extension](https://marketplace.visualstudio.com/items?itemName=hansec.fortran-ls).
For this extension you will need to install also the fortran language server. This can be done using the [python package manager](https://pip.pypa.io/en/stable/installing/) by typing
```
pip3 install fortran-language-server
```
in your command line.

## Links
* VSCode Documentation: https://code.visualstudio.com/docs
* VSCode Shortcuts: https://code.visualstudio.com/shortcuts
* Modern Fortran extension: https://marketplace.visualstudio.com/items?itemName=krvajalm.linter-gfortran
* Fortran IntelliSense extension: https://marketplace.visualstudio.com/items?itemName=hansec.fortran-ls
* Python download: https://www.python.org/downloads/
* Pip installation: https://pip.pypa.io/en/stable/installing/






