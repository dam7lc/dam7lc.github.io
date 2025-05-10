#!/bin/bash
MSG="$1"
git add .;
git commit -m "$MSG";
git push origin main;
ssh rocky@160.34.208.254 << 'EOF'
    cd /opt/website
    git pull origin main
    podman build -t website .
    sudo systemctl restart website
EOF