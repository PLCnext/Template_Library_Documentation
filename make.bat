@ECHO OFF

:: Request library name 
FOR %%a IN ("%cd%") DO set "lib_name=%%~nxa"
echo Used library name: %lib_name%

:: ------------------------------------------------------------------------------------
:: Create HTML documentation
:: ------------------------------------------------------------------------------------

:: Create folder for styles
MD html\styles
MD html\temp_md

:: Copy styles and images to html folder
copy src\_defs\html_style.css html\styles\html_style.css
robocopy src\md\_images html\_images /E

:: Copy all markdown files to temporary folder
FOR /R "src\md" %%x IN (*.md) DO copy "%%x" "html\temp_md"

:: Merge md files to one general documentation
TYPE html\temp_md\*.md >> src\md\TTemp.md

copy /b "src\md\TTemp.md" + "src\_defs\TableOfContents_Collapse.md" "src\md\Temp.md"

:: Generate general html help file
pandoc -s ^
	--css styles\html_style.css ^
	-f markdown -t html src\md\Temp.md ^
	-o html\%lib_name%.html ^
    --metadata title=%lib_name%

:: Delete temporary markdown files
del src\md\Temp.md
del src\md\TTemp.md
rmdir /s /q html\temp_md

:: ------------------------------------------------------------------------------------
:: Create PDF documentation
:: ------------------------------------------------------------------------------------

:: Delete old documentation and temp folder
IF EXIST pdf\%lib_name%.pdf DEL pdf\%lib_name%.pdf
IF EXIST pdf\temp rmdir /s /q pdf\temp

:: Create temporary folder and subfolders
MD pdf\temp
MD pdf\temp\md
MD pdf\temp\html
MD pdf\temp\html\styles

:: Copy images and stylesheet file
robocopy src\md\_images pdf\temp\html\_images
copy src\_defs\pdf_style.css pdf\temp\html\styles\pdf_style.css

:: Copy all markdown files (except 00_Table_of_Contents.md and 01_Startpage.md) to temporary folder
FOR /R "src\md" %%i IN (*.md) DO ( ^
	IF "%%~ni" neq "00_Table_Of_Contents" ( ^
		IF "%%~ni" neq "01_Startpage" ( ^
			copy "%%i" "pdf\temp\md" ^
		) ^
	) ^
)

:: Generate start page and table of contents
copy /b  "src\md\01_Startpage.md" + "src\md\00_Table_Of_Contents.md" "pdf\temp\Tmp_Merge1.md"

pandoc -s ^
	--css styles\pdf_style.css ^
	-f markdown -t html pdf\temp\Tmp_Merge1.md ^
	-o pdf\temp\html\Temp1.html ^
	--metadata title=%lib_name% 

:: Merge md files to one temporary documentation
TYPE pdf\temp\md\*.md >> pdf\temp\Tmp_Merge2.md

copy /b  "pdf\temp\Tmp_Merge2.md" + "src\_defs\EmptyTableLines.md" "pdf\temp\TTmp_Merge2.md"

:: Generate temporary html help file
pandoc -s ^
  --css styles\pdf_style.css ^
  --number-sections ^
  --toc-depth=2 ^
  -f markdown -t html pdf\temp\TTmp_Merge2.md ^
  -o pdf\temp\html\Temp2.html ^
  --metadata title="%lib_name%"

copy /b  "pdf\temp\html\Temp1.html" + "pdf\temp\html\Temp2.html" "pdf\temp\html\TTmp_Merge.html"

wkhtmltopdf ^
    --header-html "file:///%CD%/src/_defs/header.html?lib_name=%lib_name%" ^
    --enable-javascript ^
    --javascript-delay 500 ^
    --margin-top 30 ^
    --header-spacing 10 ^
	--margin-left 15 ^
	--margin-bottom 20 ^
	--disable-smart-shrinking ^
	--enable-local-file-access ^
    --disable-internal-links ^
	pdf\temp\html\TTmp_Merge.html ^
	pdf\%lib_name%.pdf


::  --header-left %lib_name% ^
::	--header-right [page]/[toPage] ^
:: 	--header-line ^
::  --footer-line ^
::  --footer-spacing 10 ^
::	--header-spacing 10 ^

:: ------------------------------------------------------------------------------------
:: Create FB related HTML files
:: ------------------------------------------------------------------------------------

setlocal enabledelayedexpansion

:: Source folder
set sourceFolder="src\md\Components"

:: Target folder
set targetFolder="html\Components"
IF not exist "%targetFolder%" mkdir "%targetFolder%"

:: Create files with HTML and JavaScript content
FOR /R "src\md\Components" %%f IN (*.md) DO ( ^
	IF EXIST html\Components\%%~nf.html DEL html\Components\%%~nf.html 
	set htmlFile="html\Components\%%~nf.html"
	echo ^<^^!DOCTYPE html^> >> "!htmlFile!" 
    echo ^<html lang="en"^> >> "!htmlFile!" 
	echo ^<head^> >> "!htmlFile!"
    echo     ^<meta charset="UTF-8"^> >> "!htmlFile!"
    echo     ^<title^>Automatic Redirect^</title^> >> "!htmlFile!"
    echo     ^<script^> >> "!htmlFile!"
    echo         // *** Change POU name here: >> "!htmlFile!"
	for /f "tokens=2* delims=_" %%a in ("%%~nf") do set "pou_name=%%a_%%b"
    echo         const pou_name = "!pou_name!"; >> "!htmlFile!"
    echo         let dots = ""; >> "!htmlFile!"
    echo         let dotElement; >> "!htmlFile!"
    echo         window.onload = function^(^) ^{ >> "!htmlFile!"
    echo             dotElement = document.getElementById^("dots"^); >> "!htmlFile!"
    echo             let i = 0; >> "!htmlFile!"
    echo             let dotInterval = setInterval^(function^(^) ^{ >> "!htmlFile!"
    echo                 if ^(i ^< 3^) ^{ >> "!htmlFile!"
    echo                     dots += "."; >> "!htmlFile!"
    echo                     dotElement.textContent = dots; >> "!htmlFile!"
    echo                     i++; >> "!htmlFile!"
    echo                 ^} else ^{ >> "!htmlFile!"
    echo                     clearInterval^(dotInterval^); >> "!htmlFile!"
    echo                 ^} >> "!htmlFile!"
    echo             ^}, 300^); >> "!htmlFile!"
    echo         ^}; >> "!htmlFile!"
    echo         setTimeout^(function^(^) ^{ >> "!htmlFile!"
    echo             window.location.href = ^`./Overview.htm#$^{pou_name^}^`; >> "!htmlFile!"
    echo         ^}, 1000^); >> "!htmlFile!"
    echo     ^</script^> >> "!htmlFile!"
    echo ^</head^> >> "!htmlFile!"
    echo ^<body^> >> "!htmlFile!"
    echo     ^<h1^>You will be redirected^<span id="dots"^>^</span^>^</h1^> >> "!htmlFile!"
    echo     ^<p^>If the redirect does not work, please click ^<a href="./Overview.htm" onclick="location.href=this.href+'#'+pou_name;return false;"^>here^</a^>.^</p^> >> "!htmlFile!"
    echo ^</body^> >> "!htmlFile!"
    echo ^</html^> >> "!htmlFile!"
)

endlocal