# BashStuff
Bash scripts to help in projects.

## setup.sh
Helps setup a loose template for a Django (1.8.3v) project. Django version can be changed by editing this script. 
- Run `bash setup.sh` and provide an absolute path for your project.
- Setup will install virtual environment and create requirements.txt, executables to create django project, django app, and run `manage.py` commands.
- Run `source venv/bin/activate` or `. venv/bin/activate` to activate virtual environment.
- Run `pip install -r requirements.txt` to install dependencies.
- Run `./s [startproject, startapp] [project_name] [location]` to create Django project or app.
- Run `./m [runserver, makemigrations, migrate]` for manage.py commands. 

## gitpush.sh
Bundles git add, commit, push commands together to push files to current working branch.
- Run `bash gitpush.sh "commit message goes here"`. 
- Output displays all staged files, git commit details, branch, and git push details.
- Optional `git status` message commented.

## git config executables (c-gc, v-gc, r-gc)

Executable to change git config --global user.name and user.email.
- Run `./c-gc [user.name] [user.email]` to set user.name, user.email.

Executable to view git config --global user.name and user.email.
- Run `./v-gc` to view user.name, user.email.

Executable to remove .gitconfig.
- Run `./r-gc` to delete .gitconfig file from root.
