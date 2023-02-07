# A base application for LOVE2D using moonscript and visual studio code (vscode)

This project serves as a simple prototype for setting up a moonscript project in vscode. Currently only tested on Windows.

To run this project in vscode:
1. Download moonscript compiler from https://moonscript.org/
2. Add path to moonc into your PATH environment variable
3. Download and install LOVE from https://love2d.org/
4. Add path to love.exe into your PATH environment variable
5. After updating PATHs, you'll need to restart vscode
6. In vscode, install a moonscript extension. I use https://marketplace.visualstudio.com/items?itemName=vgalaktionov.moonscript 
7. Open up this folder with vscode as a workspace
8. To compile and run your app with LOVE, press Control + Shift + B to run the build and run task automatically

# Todos
1. I haven't figured out good debugging support yet with moonscript, if anyone has any suggestions please let me know. print() works but meh, and also the output from LOVE when an error is encountered has to be tracked down in the compiled .lua file in the dist folder and then translated into the corresponded moon in order to fix the problem.
2. I'd like to package this similar to dotnet or laravel where you can do something like: `moonscriptwlove new` at the terminal in a command line and it will automatically deploy this project to the working directory.

# Important Files and Folders
* .vscode\ - contains tasks.json which adds a build task to run the batch file to compile and run
* dist\ - The output directory where compiled lua is placed. All *.lua are deleted out of here upon build. This is where you would place any media/etc to be used by love.
* src\ - Here is where to place your *.moon files for development
* .gitignore - A gitignore for lua, only important addition is that dist\\*.lua is ignored
* build_and_run.bat this is the command that's executed upon build, it compiles the moonscript into dist and then runs LOVE.

