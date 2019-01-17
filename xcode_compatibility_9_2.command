#!/bin/bash

folder=$(ls | grep *.xcodeproj)
path=$folder/
cd $path
sed 's/objectVersion = .*;/objectVersion = 48;/g' project.pbxproj > dummy.pbxproj
mv dummy.pbxproj project.pbxproj
sed 's/compatibilityVersion = ".*";/compatibilityVersion = "Xcode 8.0";/g' project.pbxproj > dummy.pbxproj
mv dummy.pbxproj project.pbxproj

