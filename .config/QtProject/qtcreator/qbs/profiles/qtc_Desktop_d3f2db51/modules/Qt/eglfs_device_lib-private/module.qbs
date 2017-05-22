import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EglDeviceIntegration"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["dl", "/usr/lib/libQt5PlatformSupport.a", "fontconfig", "freetype", "/usr/lib/libQt5DBus.so.5.5.1", "gthread-2.0", "glib-2.0", "Xrender", "Xext", "X11", "m", "input", "xkbcommon", "udev", "mtdev", "EGL", "GL", "/usr/lib/libQt5Gui.so.5.5.1", "/usr/lib/libQt5Core.so.5.5.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: ["-pthread"]
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EglDeviceIntegration"
    libNameForLinkerRelease: "Qt5EglDeviceIntegration"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5EglDeviceIntegration.so.5.5.1"
    cpp.defines: ["QT_EGLFS_DEVICE_LIB_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtQGui", "/usr/include/qt/QtGui/5.5.1", "/usr/include/qt/QtGui/5.5.1/QtGui"]
    cpp.libraryPaths: []
    
}
