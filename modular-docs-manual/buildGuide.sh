# Build the guide

# Find the directory name and full path
CURRENT_GUIDE=${PWD##*/}
CURRENT_DIRECTORY=$(pwd)
RED='\033[0;31m'
BLACK='\033[0;30m'

usage(){
  cat <<EOM
USAGE: $0 [OPTION]

DESCRIPTION: Build the documentation in this directory.

OPTIONS:
  -h       Print help.

EOM
}

while getopts "ht:" c
 do
     case "$c" in
       h)         usage
                  exit 1;;
       \?)        echo "Unknown option: -$OPTARG." >&2
                  usage
                  exit 1;;
     esac
done

# Remove the html and build directories and then recreate the html/images/ directory
if [ -d html ]; then
   rm -r html/
fi
if [ -d build ]; then
   rm -r build/
fi

mkdir -p html
cp -r ../images/ html/

echo ""
echo "********************************************"
echo " Building $CURRENT_GUIDE                "
echo "********************************************"
echo ""
echo "Building an asciidoctor version of the $CURRENT_GUIDE"
asciidoctor -t -dbook -a toc -o html/$CURRENT_GUIDE.html master.adoc

echo "Building the ccutil version of the $CURRENT_GUIDE"
ccutil compile --lang en_US --format html-single --main-file master.adoc

cd ..

echo "$CURRENT_GUIDE (AsciiDoctor) is located at: " file://$CURRENT_DIRECTORY/html/$CURRENT_GUIDE.html

if [ -d  $CURRENT_DIRECTORY/build/tmp/en-US/html-single/ ]; then
  echo "$CURRENT_GUIDE (ccutil) is located at: " file://$CURRENT_DIRECTORY/build/tmp/en-US/html-single/index.html
  exit 0
else
  echo -e "${RED}Build of $CURRENT_GUIDE failed!"
  echo -e "${BLACK}See the log above for details."
  exit 1
fi
