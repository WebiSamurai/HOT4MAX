set SdkVersion=2012

set MaxSdkDir=..\3rdparty\Autodesk\%SdkVersion%
set Dependencies=comctl32.lib;mnmath.lib;paramblk2.lib;core.lib;geom.lib;gfx.lib;maxutil.lib;poly.lib;mesh.lib;bmm.lib;assetmanagement.lib;blitz.lib;libfftw3f-3.lib
cd ..
"%WinDir%\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe" .\vs2012\hotOcean_Max.vcxproj /m /p:Configuration=Release;Platform=win32
"%WinDir%\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe" .\vs2012\hotOcean_Max.vcxproj /m /p:Configuration=Release;Platform=x64

del Hot4Max_%SdkVersion%_32bit.zip
.\3rdparty\7z\7z a -tzip .\Release\Hot4Max_%SdkVersion%_32bit.zip readme.html
.\3rdparty\7z\7z a -tzip .\Release\Hot4Max_%SdkVersion%_32bit.zip .\3rdparty\win32\libfftw3f-3.dll
.\3rdparty\7z\7z a -tzip .\Release\Hot4Max_%SdkVersion%_32bit.zip .\plugins\%SdkVersion%\win32\hotOcean_Max_%SdkVersion%.dlm

del Hot4Max_%SdkVersion%_64bit.zip
.\3rdparty\7z\7z a -tzip .\Release\Hot4Max_%SdkVersion%_64bit.zip readme.html
.\3rdparty\7z\7z a -tzip .\Release\Hot4Max_%SdkVersion%_64bit.zip .\3rdparty\win64\libfftw3f-3.dll
.\3rdparty\7z\7z a -tzip .\Release\Hot4Max_%SdkVersion%_64bit.zip .\plugins\%SdkVersion%\x64\hotOcean_Max_%SdkVersion%.dlm