
# Exercises

Exercises are designed with specific goals which lead me to compile exercises with certain non-default compiler options.


## To Ensure Exercises Work On All Windows

- Set build to 32 bit (in build settings of Visual Studio)
- Change MFC to be used from a shared library (Properties > Advanced > Use Of Mfc)
- Change target to WinXP/Win7 (Properties > General > Platform Toolset)


## To Ensure Beginner Exercises Aren't Too Hard To Reverse-Engineer

- Set build to release (in build settings of Visual Studio)
- Turn off optimizations (Properties > C/C++ > Optimizations > Disabled)

## To Ensure Certain Exercises Are Exploitable

- Disable stack cookies ( Properties > C/C++ > All Options > Security Checks > Disable)


Exercises are compiled with Visual Studio 2019.
