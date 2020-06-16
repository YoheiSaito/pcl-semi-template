#!/bin/bash
PROJECT="ply_viewer"
EDITOR="code"
function prepare () {
    mkdir build
    cd ./build && cmake ../source -DPROJ=$PROJECT && cd ..
}
function build () {
    if [ ! -e ./build ]; then
        prepare
    fi
    cd build && make -j4 && cd ..
}
function run (){
    if [ ! -e  ./build/$PROJECT ]; then
        build
    fi
    ./build/$PROJECT $@
}
function clean () {
    rm -rf ./build
}

function edit () {
    if type $EDITOR
    then
        $EDITOR source &
    else
        echo "install vscode"
        sudo snap install code
    fi
}

case $1 in
"edit" | "run" | "build" | "clean" | "compare" ) $@
    ;;
 * ) run $*
    ;;
esac
