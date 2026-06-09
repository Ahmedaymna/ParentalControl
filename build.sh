#!/bin/bash

echo "🚀 Building Parental Control Project..."

# Build parent-app
echo ""
echo "📱 Building Parent App..."
cd parent-app
./gradlew clean assembleRelease
if [ $? -ne 0 ]; then
    echo "❌ Parent app build failed"
    exit 1
fi
echo "✅ Parent app built successfully"
APK_PARENT=$(find app/build/outputs/apk -name "*.apk" | head -1)

# Build child-service
echo ""
echo "🔧 Building Child Service..."
cd ../child-service
./gradlew clean assembleRelease
if [ $? -ne 0 ]; then
    echo "❌ Child service build failed"
    exit 1
fi
echo "✅ Child service built successfully"
APK_CHILD=$(find app/build/outputs/apk -name "*.apk" | head -1)

# Summary
echo ""
echo "=========================================="
echo "✅ Build Complete!"
echo "=========================================="
echo ""
echo "📦 Output APKs:"
echo "  Parent App:   $APK_PARENT"
echo "  Child Service: $APK_CHILD"
echo ""
echo "🎉 Ready to install on devices!"
