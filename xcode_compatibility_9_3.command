#!/bin/bash

folder=$(ls | grep *.xcodeproj)
path=$folder/
cd $path
sed 's/objectVersion = .*;/objectVersion = 50;/g' project.pbxproj > dummy.pbxproj
mv dummy.pbxproj project.pbxproj
sed 's/compatibilityVersion = ".*";/compatibilityVersion = "Xcode 9.3";/g' project.pbxproj > dummy.pbxproj
mv dummy.pbxproj project.pbxproj

