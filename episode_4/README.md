# Readme file for episode four of VSCode for Fortran
You can find all important information from the video listed within this file.

## Content of episode four
* Introduction
* Installing extensions
* Configure debugger using a launch.json file
* Add build step as pre-launch task

## Details on content

### Installing extensions
To get proper GDB support for your project you need to install the following extensions to VS Code:
  * C/C++ *by Microsoft*
  * Fortran Breakpoint Support *by Ekibun*

### Configure launch.json & Add build step
To let the debugger know how to run, you need to define it's configurations within a ```launch.json``` file within the ```.vscode``` directory. Here is an example for such a file:
```
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Run GDB",
            "type": "cppdbg",
            "request": "launch",
            "program": "${workspaceRoot}/a.out",
            "args": [],
            "stopAtEntry": false,
            "cwd": "${workspaceRoot}",
            "externalConsole": false,
            "MIMode": "gdb",
            "preLaunchTask": "make",
        }
    ]
}
```
The option ```preLaunchTask``` can be used to run the compilation process before you start the debugger. I would strongly recommend this feature to avoid not having compiled any changes of your code before debugging.

## Links
* VSCode Documentation: https://code.visualstudio.com/docs
* VSCode Tasks: https://code.visualstudio.com/docs/editor/tasks
* VSCode Debugging : https://code.visualstudio.com/docs/editor/debugging
* Configuring Debugger: https://code.visualstudio.com/docs/cpp/launch-json-reference





