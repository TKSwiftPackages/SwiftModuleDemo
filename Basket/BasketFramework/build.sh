NAME=BasketFramework

rm -fr build
rm -fr *.xcframework

xcodebuild -project ${NAME}.xcodeproj -sdk iphoneos
xcodebuild -project ${NAME}.xcodeproj -sdk iphonesimulator
xcodebuild -create-xcframework\
 -framework build/Release-iphoneos/${NAME}.framework\
 -framework build/Release-iphonesimulator/${NAME}.framework\
 -output ${NAME}.xcframework