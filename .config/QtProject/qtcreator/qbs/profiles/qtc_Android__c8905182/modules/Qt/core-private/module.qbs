import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Core"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: false
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: ""
    libNameForLinkerRelease: ""
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: []
    cpp.includePaths: ["/home/luca/Qt-android/5.5/android_armv7/include/QtCore/5.5.1", "/home/luca/Qt-android/5.5/android_armv7/include/QtCore/5.5.1/QtCore"]
    cpp.libraryPaths: []
    
}
