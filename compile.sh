#!/bin/bash
PROJECT="ply_viewer"
EDITOR="code"
function download() {
    cd ..
    if [ ! -e bunny.tar.gz ]; then
        wget http://graphics.stanford.edu/pub/3Dscanrep/bunny.tar.gz
        tar xf bunny.tar.gz
        mv ./bunny/data/bun*.ply .
        rm -rf bunny
    else
        echo "bunny is already downloaded"
    fi
    cd -
}

#!/bin/bash
PROJECT="ply_viewer"
EDITOR="code"
function download() {
    cd ..
    if [ ! -e bunny.tar.gz ]; then
        wget http://graphics.stanford.edu/pub/3Dscanrep/bunny.tar.gz
        tar xf bunny.tar.gz
        mv ./bunny/data/bun*.ply .
        rm -rf bunny
    else
        echo "bunny is already downloaded"
    fi
    cd -
}
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
 "download" |"edit" | "run" | "build" | "clean" | "prepare" ) $@
    ;;
 "semi1" )
     build&& run ../bun000.ply ../bun045.ply ../bun090.ply
    ;;
 * ) 
     build
     run $*
    ;;
esac
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
 "download" |"edit" | "run" | "build" | "clean" | "prepare" ) $@
    ;;
 "semi1")
     build 
     run ../bun000.ply ../bun045.ply ../bun315.ply 
 * ) 
     build
     run $*
    ;;
esac
