import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Bootstrap"
    Depends { name: "Qt"; submodules: []}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["pthread"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Bootstrap"
    libNameForLinkerRelease: "Qt5Bootstrap"
    libFilePathDebug: ""
    libFilePathRelease: "/home/luca/Qt-android/5.5/android_armv7/lib/libQt5Bootstrap.a"
    cpp.defines: ["QT_BOOTSTRAP_LIB", "QT_BOOTSTRAPPED", "QT_LITE_UNICODE", "QT_NO_CAST_TO_ASCII", "QT_NO_CODECS", "QT_NO_DATASTREAM", "QT_NO_LIBRARY", "QT_NO_QOBJECT", "QT_NO_SYSTEMLOCALE", "QT_NO_THREAD", "QT_NO_UNICODETABLES", "QT_NO_USING_NAMESPACE", "QT_NO_DEPRECATED", "QT_NO_TRANSLATION"]
    cpp.includePaths: ["/home/luca/Qt-android/5.5/android_armv7/include", "/home/luca/Qt-android/5.5/android_armv7/include/QtCore", "/home/luca/Qt-android/5.5/android_armv7/include/QtXml", "/home/luca/Qt-android/5.5/android_armv7/include/QtCore/5.5.1", "/home/luca/Qt-android/5.5/android_armv7/include/QtCore/5.5.1/QtCore", "/home/luca/Qt-android/5.5/android_armv7/include/QtXml/5.5.1", "/home/luca/Qt-android/5.5/android_armv7/include/QtXml/5.5.1/QtXml"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
