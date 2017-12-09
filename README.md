# requirements_base
A basic adm/ directory that will enable a group to be consistent with package dependencies

## Steps 
1. Make sure you have virtualenv installed!! virtualevnv is a package for allowing virtual environments for your projects. You are able to specify the environment, and manage yout packages within that environment. 
The way to do this is: `pip install virtualenv`
See [virtualenv](https://virtualenv.pypa.io/en/stable/)

2. Copy over this adm directory into your project, then go to the root of your project.
`cp -r adm/ ~/PATH_TO_YOUR_PROJECT`

3. Now that you have virtualenv installed, you want to initialize your environment. The command to do this is: 
`virtualenv venv`

4. To activate your venv, type: 
```
# for macos
source venv/bin/activate

# windows
source venv/Scripts/activate
```

5. Now that you are in your environmengt, you will want to run the installs.
`adm/update_requirements.sh`
This command will run whatever code is living inside of update_requirements.sh. In this case, we are just installing all of the libraries living within the pip_requirements.txt. You are able to add or subract different commands, add different files, etc, to your update file in order to make your environment exactly how you want it. 



## Common Issues
There are always going to be issues. Packages rely on different dependencies, developers use different machines, etc. If you are having issues with this process.. Please document them!! Add to the list below so that other developers using this example have a good place to go in order to troubleshoot. Make a pull request against this repo, and we will be sure to add them :) Thanks!!

