# Microsoft Developer Studio Generated NMAKE File, Based on jamlib.dsp
!IF "$(CFG)" == ""
CFG=jamlib - Win32 Debug
!MESSAGE No configuration specified. Defaulting to jamlib - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "jamlib - Win32 Release" && "$(CFG)" != "jamlib - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "jamlib.mak" CFG="jamlib - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "jamlib - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "jamlib - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "jamlib - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\jam.dll"


CLEAN :
	-@erase "$(INTDIR)\crc32.obj"
	-@erase "$(INTDIR)\lastread.obj"
	-@erase "$(INTDIR)\mbase.obj"
	-@erase "$(INTDIR)\message.obj"
	-@erase "$(INTDIR)\structrw.obj"
	-@erase "$(INTDIR)\subpack.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\jam.dll"
	-@erase "$(OUTDIR)\jam.exp"
	-@erase "$(OUTDIR)\jam.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MT /W3 /GX /O2 /I "include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "__WIN32__" /Fp"$(INTDIR)\jamlib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\jamlib.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\jam.pdb" /machine:I386 /def:".\jamlib.def" /out:"$(OUTDIR)\jam.dll" /implib:"$(OUTDIR)\jam.lib" 
DEF_FILE= \
	".\jamlib.def"
LINK32_OBJS= \
	"$(INTDIR)\crc32.obj" \
	"$(INTDIR)\lastread.obj" \
	"$(INTDIR)\mbase.obj" \
	"$(INTDIR)\message.obj" \
	"$(INTDIR)\structrw.obj" \
	"$(INTDIR)\subpack.obj"

"$(OUTDIR)\jam.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "jamlib - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\jam.dll"


CLEAN :
	-@erase "$(INTDIR)\crc32.obj"
	-@erase "$(INTDIR)\lastread.obj"
	-@erase "$(INTDIR)\mbase.obj"
	-@erase "$(INTDIR)\message.obj"
	-@erase "$(INTDIR)\structrw.obj"
	-@erase "$(INTDIR)\subpack.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\jam.dll"
	-@erase "$(OUTDIR)\jam.exp"
	-@erase "$(OUTDIR)\jam.ilk"
	-@erase "$(OUTDIR)\jam.lib"
	-@erase "$(OUTDIR)\jam.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /I "include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "__WIN32__" /Fp"$(INTDIR)\jamlib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\jamlib.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\jam.pdb" /debug /machine:I386 /def:".\jamlib.def" /out:"$(OUTDIR)\jam.dll" /implib:"$(OUTDIR)\jam.lib" /pdbtype:sept 
DEF_FILE= \
	".\jamlib.def"
LINK32_OBJS= \
	"$(INTDIR)\crc32.obj" \
	"$(INTDIR)\lastread.obj" \
	"$(INTDIR)\mbase.obj" \
	"$(INTDIR)\message.obj" \
	"$(INTDIR)\structrw.obj" \
	"$(INTDIR)\subpack.obj"

"$(OUTDIR)\jam.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("jamlib.dep")
!INCLUDE "jamlib.dep"
!ELSE 
!MESSAGE Warning: cannot find "jamlib.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "jamlib - Win32 Release" || "$(CFG)" == "jamlib - Win32 Debug"
SOURCE=.\src\crc32.c

"$(INTDIR)\crc32.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\src\lastread.c

"$(INTDIR)\lastread.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\src\mbase.c

"$(INTDIR)\mbase.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\src\message.c

"$(INTDIR)\message.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\src\structrw.c

"$(INTDIR)\structrw.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=.\src\subpack.c

"$(INTDIR)\subpack.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

