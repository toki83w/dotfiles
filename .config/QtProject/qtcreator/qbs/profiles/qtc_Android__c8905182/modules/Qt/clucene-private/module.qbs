import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "CLucene"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/luca/Qt-android/5.5/android_armv7/lib/libQt5Core.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5CLucene"
    libNameForLinkerRelease: "Qt5CLucene"
    libFilePathDebug: ""
    libFilePathRelease: "/home/luca/Qt-android/5.5/android_armv7/lib/libQt5CLucene.so"
    cpp.defines: ["QT_CLUCENE_LIB"]
    cpp.includePaths: ["/home/luca/Qt-android/5.5/android_armv7/include", "/home/luca/Qt-android/5.5/android_armv7/include/QtCLucene", "/home/luca/Qt-android/5.5/android_armv7/include/QtCLucene/5.5.1", "/home/luca/Qt-android/5.5/android_armv7/include/QtCLucene/5.5.1/QtCLucene"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a", "/opt/android/ndk/platforms/android-9/arch-arm//usr/lib", "/home/luca/Qt-android/5.5/android_armv7/lib"]
    
}
