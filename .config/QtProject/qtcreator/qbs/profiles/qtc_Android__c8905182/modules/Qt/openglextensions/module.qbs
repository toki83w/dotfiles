import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "OpenGLExtensions"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/home/luca/Qt-android/5.5/android_armv7/lib/libQt5Gui.so", "/home/luca/Qt-android/5.5/android_armv7/lib/libQt5Core.so", "gnustl_shared", "log", "z", "m", "dl", "c", "gcc", "GLESv2"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5OpenGLExtensions"
    libNameForLinkerRelease: "Qt5OpenGLExtensions"
    libFilePathDebug: ""
    libFilePathRelease: "/home/luca/Qt-android/5.5/android_armv7/lib/libQt5OpenGLExtensions.a"
    cpp.defines: ["QT_OPENGLEXTENSIONS_LIB"]
    cpp.includePaths: ["/home/luca/Qt-android/5.5/android_armv7/include", "/home/luca/Qt-android/5.5/android_armv7/include/QtOpenGLExtensions"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a", "/opt/android/ndk/platforms/android-9/arch-arm//usr/lib", "/home/luca/Qt-android/5.5/android_armv7/lib"]
    isStaticLibrary: true
}
