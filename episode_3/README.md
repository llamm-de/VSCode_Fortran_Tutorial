# Readme file for episode three of VSCode for Fortran
You can find all important information from the video listed within this file.

## Content of episode three
* Introduction
* Setting up a simple 'hello VSCode' task
* Build task
* Compound tasks

## Details on content

### Setting up a simple 'hello VSCode' task
To set up a task in VS Code, you need to create a hidden directory in your projects tree root. This directory must
be calles ```.vscode```. Next you must create a ```tasks.json``` file within this directory. To print "hello VS Code to the command line,
this file needs the following piece of code:
```
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "hello",
            "type": "shell",
            "command": "echo 'hello VS Code'"
        }
    ]
}
```
If you want to execute the defined task, hit ```Ctrl + Shift + P ``` and type ```tasks``` in the comman dpallett. Now you can choose the ```hello``` task and execute it.

### Build task
A build task can be defined similar to the task example. It would look like the example below.
```
{
    "label": "build",
    "type": "shell",
    "command": "gfortran",
    "args": [
            "-Wall",
            "-o",
            "./build/hello",
            "helloVSCode.f95",
            "getName.f95"  
    ],
     "group": {
                "kind": "build",
                "isDefault": true
            }
}
```
In this case, the ```group``` property defines that this task is the default build task. This option will lead to VS Code triggering this particular task once you press ```Ctrl + Shift + B```.

### Compund tasks
You can define compound tasks to execute a variety of single tasks either sequentially or paralelly. The definition is as follows:
```
{
    "label": "build",
    "dependsOn": [
        "make build dir",
        "compile"
    ],
    "dependsOrder": "sequence",
    "group": {
        "kind": "build",
        "isDefault": true
    }
},
{
    "label": "make build dir",
    "type": "shell",
    "command": "if [ ! -d \"./build\" ]; then mkdir build; fi"
},
{
    "label": "compile",
    "type": "shell",
    "command": "gfortran",
    "args": [
            "-Wall",
            "-o",
            "./build/hello",
            "helloVSCode.f95",
            "getName.f95"  
    ]
}
```
This compund tasks named ```build``` will execute the single tasks ```make build dir``` and ```compile``` after one another.

## Links
* VSCode Documentation: https://code.visualstudio.com/docs
* VSCode Tasks: https://code.visualstudio.com/docs/editor/tasks





