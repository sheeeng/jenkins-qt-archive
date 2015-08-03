PATH=/c/Program\ Files/Git/usr/bin/:$PATH

SPECTRUM_PATH=Qt5.4.1-x86-msvc2013_opengl
echo \$SPECTRUM_PATH: $SPECTRUM_PATH
mkdir -p "$SPECTRUM_PATH"

tar czvf "$SPECTRUM_PATH".tar.gz "$SPECTRUM_PATH"
/c/Program\ Files/7-Zip/7z a -tzip -mx9 "$SPECTRUM_PATH".zip -r "$SPECTRUM_PATH"/*
/c/Program\ Files/7-Zip/7z a -t7z -mx9 "$SPECTRUM_PATH".7z -r "$SPECTRUM_PATH"/*

DEBUG_DIRECTORY_NAME=Qt5.4.1-x86-msvc2012_opengl_debug
echo \$DEBUG_DIRECTORY_NAME: $DEBUG_DIRECTORY_NAME
mkdir -p "$DEBUG_DIRECTORY_NAME"

tar czvf "$DEBUG_DIRECTORY_NAME".tar.gz "$DEBUG_DIRECTORY_NAME"
/c/Program\ Files/7-Zip/7z a -tzip -mx9 "$DEBUG_DIRECTORY_NAME".zip -r "$DEBUG_DIRECTORY_NAME"/*
/c/Program\ Files/7-Zip/7z a -t7z -mx9 "$DEBUG_DIRECTORY_NAME".7z -r "$DEBUG_DIRECTORY_NAME"/*

RELEASE_DIRECTORY_NAME=Qt5.4.1-x86-msvc2012_opengl_release
echo \$RELEASE_DIRECTORY_NAME: $RELEASE_DIRECTORY_NAME
mkdir -p "$RELEASE_DIRECTORY_NAME"

tar czvf "$RELEASE_DIRECTORY_NAME".tar.gz "$RELEASE_DIRECTORY_NAME"
/c/Program\ Files/7-Zip/7z a -tzip -mx9 "$RELEASE_DIRECTORY_NAME".zip -r "$RELEASE_DIRECTORY_NAME"/*
/c/Program\ Files/7-Zip/7z a -t7z -mx9 "$RELEASE_DIRECTORY_NAME".7z -r "$RELEASE_DIRECTORY_NAME"/*