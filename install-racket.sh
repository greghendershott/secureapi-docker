# A script to download and run the Racket installation script for Linux,
# supply default answers to its prompt questions.
#
# Run this with `sudo`.

INSTALLER=/tmp/racket.sh

curl -L -o $INSTALLER  http://mirror.racket-lang.org/installers/6.1.1/racket-6.1.1-x86_64-linux-ubuntu-precise.sh

chmod u+rx $INSTALLER

$INSTALLER <<EOF
no
/usr/racket

EOF

exit 0
