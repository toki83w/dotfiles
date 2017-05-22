import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickParticles"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private", "qml-private", "quick-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/luca/Qt-android/5.5/android_armv7/lib/libQt5Quick.so", "/home/luca/Qt-android/5.5/android_armv7/lib/libQt5Gui.so", "/home/luca/Qt-android/5.5/android_armv7/lib/libQt5Qml.so", "/home/luca/Qt-android/5.5/android_armv7/lib/libQt5Network.so", "/home/luca/Qt-android/5.5/android_armv7/lib/libQt5Core.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5QuickParticles"
    libNameForLinkerRelease: "Qt5QuickParticles"
    libFilePathDebug: ""
    libFilePathRelease: "/home/luca/Qt-android/5.5/android_armv7/lib/libQt5QuickParticles.so"
    cpp.defines: ["QT_QUICKPARTICLES_LIB"]
    cpp.includePaths: ["/home/luca/Qt-android/5.5/android_armv7/include", "/home/luca/Qt-android/5.5/android_armv7/include/QtQuickParticles", "/home/luca/Qt-android/5.5/android_armv7/include/QtQuickParticles/5.5.1", "/home/luca/Qt-android/5.5/android_armv7/include/QtQuickParticles/5.5.1/QtQuickParticles"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a", "/opt/android/ndk/platforms/android-9/arch-arm//usr/lib", "/home/luca/Qt-android/5.5/android_armv7/lib", "/home/luca/Qt-android/5.5/android_armv7/lib"]
    
}
