# Use this to manually run a script
# Usage: ./php-cli.sh script.php
clear
echo "Running php-cli Docker with arguments $@"
docker rm -f php56-cli 2>/dev/null
docker run -it --rm --name php56-cli \
-v "$PWD":/usr/src/myapp \
-v "${HOME}/Music":/usr/src/myapp/music \
-v "${HOME}/Pictures/wallpapers":/usr/src/myapp/pictures \
-v "${HOME}":/usr/src/myapp/home \
-w /usr/src/myapp \
php:5.6-cli php "$@"
