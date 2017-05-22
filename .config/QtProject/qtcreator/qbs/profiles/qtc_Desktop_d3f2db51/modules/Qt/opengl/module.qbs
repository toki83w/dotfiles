import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "OpenGL"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt5Widgets.so.5.5.1", "/usr/lib/libQt5Gui.so.5.5.1", "/usr/lib/libQt5Core.so.5.5.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5OpenGL"
    libNameForLinkerRelease: "Qt5OpenGL"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5OpenGL.so.5.5.1"
    cpp.defines: ["QT_OPENGL_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtOpenGL"]
    cpp.libraryPaths: []
    
}
