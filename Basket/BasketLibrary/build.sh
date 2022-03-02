NAME=BasketLibrary

rm -fr build
rm -fr *.xcframework

xcodebuild -project ${NAME}.xcodeproj -sdk iphoneos
xcodebuild -project ${NAME}.xcodeproj -sdk iphonesimulator
xcodebuild -create-xcframework\
 -library build/Release-iphoneos/lib${NAME}.a\
 -headers build/Release-iphoneos/${NAME}.swiftmodule\
 -library build/Release-iphonesimulator/lib${NAME}.a\
 -headers build/Release-iphonesimulator/${NAME}.swiftmodule\
 -output ${NAME}.xcframework