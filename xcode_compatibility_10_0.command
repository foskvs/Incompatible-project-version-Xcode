#!/bin/bash

folder=$(ls | grep *.xcodeproj)
path=$folder/
cd $path
sed 's/objectVersion = .*;/objectVersion = 51;/g' project.pbxproj > dummy.pbxproj
mv dummy.pbxproj project.pbxproj
sed 's/compatibilityVersion = ".*";/compatibilityVersion = "Xcode 10.0";/g' project.pbxproj > dummy.pbxproj
mv dummy.pbxproj project.pbxproj

