import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebChannel"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt5Qml.so.5.5.1", "/usr/lib/libQt5Network.so.5.5.1", "/usr/lib/libQt5Core.so.5.5.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5WebChannel"
    libNameForLinkerRelease: "Qt5WebChannel"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WebChannel.so.5.5.1"
    cpp.defines: ["QT_WEBCHANNEL_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebChannel"]
    cpp.libraryPaths: []
    
}
