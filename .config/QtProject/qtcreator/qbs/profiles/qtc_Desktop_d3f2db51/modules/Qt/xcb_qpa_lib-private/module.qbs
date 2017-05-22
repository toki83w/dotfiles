import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "XcbQpa"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["dl", "X11-xcb", "Xi", "SM", "ICE", "xcb-render", "dbus-1", "xcb", "xcb-image", "xcb-icccm", "xcb-sync", "xcb-xfixes", "xcb-shm", "xcb-randr", "xcb-shape", "xcb-keysyms", "xcb-xkb", "xkbcommon-x11", "/usr/lib/libQt5PlatformSupport.a", "fontconfig", "freetype", "gthread-2.0", "glib-2.0", "Xrender", "Xext", "X11", "m", "input", "xkbcommon", "udev", "mtdev", "EGL", "GL", "/usr/lib/libQt5Gui.so.5.5.1", "/usr/lib/libQt5DBus.so.5.5.1", "/usr/lib/libQt5Core.so.5.5.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: ["-pthread"]
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5XcbQpa"
    libNameForLinkerRelease: "Qt5XcbQpa"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5XcbQpa.so.5.5.1"
    cpp.defines: ["QT_XCB_QPA_LIB_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtQGui", "/usr/include/qt/QtGui/5.5.1", "/usr/include/qt/QtGui/5.5.1/QtGui"]
    cpp.libraryPaths: []
    
}
