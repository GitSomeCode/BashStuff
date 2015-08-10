#!/bin/bash

function today()
{
    echo "Django Project Setup created:"
    date +"%A, %B %-d, %Y"
}

# Prompt user to enter project absolute path 
echo "Enter absolute path of project destination and hit [ENTER]"

# Catch user's input
read proj_path

# Create directory where user specifies absolute path
echo "Creating project in $proj_path..."
mkdir -p $proj_path

# Install virtual environment
echo "Installing virtual environment..."
virtualenv $proj_path/venv

# Creation Certificate
echo "Creating certificate..."
today | cat > $proj_path/Certificate.txt

# Create requirements.txt file
echo "Creating requirements.txt..."
cat > $proj_path/requirements.txt << EOF
Django==1.8.3
EOF

# Executable for django startproject, startapp commands
echo "Creating django-admin executable"
cat > $proj_path/s << EOF
django-admin.py \$1 \$2 \$3
EOF
chmod +x $proj_path/s

# Executable for python manage.py
echo "Creating python manage.py executable"
cat > $proj_path/m << EOF
python manage.py \$1 \$2 \$3 \$4 \$5
EOF
chmod +x $proj_path/m 




