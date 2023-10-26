#!/bin/sh
set -e

echo "Activating feature 'cowsay'"

cat > /usr/local/bin/cowsay \
<< 'EOF'
#!/bin/sh
MSG="$1"
printf '%s' "
 __________
    
    $MSG        

 ----------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\\
                ||----w |
                ||     ||
"
EOF

chmod +x /usr/local/bin/cowsay