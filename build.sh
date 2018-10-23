#!/usr/bin/env bash

#echo "############################## begin build"
#echo "############################## end build"


function build ()  {
    rm pubspec.yaml
    cp templates/pubspec-orm.yaml pubspec.yaml
    pub get

    pub run build_runner build
}

function run  {
    rm pubspec.yaml
    cp templates/pubspec-run.yaml pubspec.yaml
    flutter packages get
}


if [[ "$1" == "test" ]] ;then
    echo 'switch to test config-----\n'
    rm pubspec.yaml
    cp templates/pubspec-test.yaml pubspec.yaml
    pub get
    pub run build_runner build
elif [[ "$1" == "run" ]] ;then
    echo 'build and run---'
    run
elif [[ "$1" == "build" ]] ;then
    echo 'build ---'
    build
else
    echo 'default---'
    build
    run
fi