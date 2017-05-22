import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MultimediaQuick_p"
    Depends { name: "Qt"; submodules: ["core", "quick", "multimedia-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt5Quick.so.5.5.1", "/usr/lib/libQt5Multimedia.so.5.5.1", "/usr/lib/libQt5Gui.so.5.5.1", "/usr/lib/libQt5Qml.so.5.5.1", "/usr/lib/libQt5Network.so.5.5.1", "/usr/lib/libQt5Core.so.5.5.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5MultimediaQuick_p"
    libNameForLinkerRelease: "Qt5MultimediaQuick_p"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5MultimediaQuick_p.so.5.5.1"
    cpp.defines: ["QT_QTMULTIMEDIAQUICKTOOLS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtMultimediaQuick_p", "/usr/include/qt/QtMultimediaQuick_p/5.5.1", "/usr/include/qt/QtMultimediaQuick_p/5.5.1/QtMultimediaQuick_p"]
    cpp.libraryPaths: []
    
}
