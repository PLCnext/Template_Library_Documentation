@ECHO OFF

:: Request library name (used as title)
set /p lib_name="Please enter name of your library: "

:: ------------------------------------------------------------------------------------
:: Create general HTML documentation
:: ------------------------------------------------------------------------------------

:: Create folder for styles
MD html\styles
MD html\temp_md

:: Copy styles and images to html folder
copy src\_defs\html_style.css html\styles\html_style.css
robocopy src\md\_images html\_images /E

:: Copy all markdown files to temporary folder
FOR /R "src\md" %%x in (*.md) do copy "%%x" "html\temp_md"

:: Merge md files to one general documentation
TYPE html\temp_md\*.md >> src\md\Temp.md

:: Generate general html help file
pandoc -s ^
	--css styles\html_style.css ^
	-f markdown -t html src\md\Temp.md ^
	-o html\%lib_name%.html ^
    --metadata title=%lib_name%

:: Delete temporary markdown file
del src\md\Temp.md

:: ------------------------------------------------------------------------------------
:: Create FB/FU documentations for PLCnext Engineer help function
:: ------------------------------------------------------------------------------------

:: Copy FB/FU-realted files in POE folder
MD html\temp_md\poe
FOR /R "src\md\FBs_FUs" %%x in (*.md) do copy "%%x" "html\temp_md\poe"

:: Concat each file with Auto_Open.md
FOR /R "html\temp_md\poe" %%x in (*.md) do copy /b "%%x" + "src\_defs\Auto_Open.md" "html\temp_md\poe\%%~nx.md"

:: Create folder for each POE
FOR %%i in (html\temp_md\poe\*) do md "html\temp_md\poe\%%~ni" 

:: Copy general markdown files to POE folders
FOR /D %%x in ("html\temp_md\poe\*") do copy html\temp_md\*.md %%x
del html\temp_md\*.md

:: Overwrite POE-realted files in respective POE folder
FOR %%x in (html\temp_md\poe\*) do copy "html\temp_md\poe\%%~nx.md" "html\temp_md\poe\%%~nx" 

:: Merge markdown files in each POE folder
FOR /D %%i in (html\temp_md\poe\*) do TYPE "html\temp_md\poe\%%~ni\*.md" >> html\temp_md\%%~ni.md 
rmdir /s /q html\temp_md\poe

:: Generate separate html documents via pandoc
FOR /R "html\temp_md" %%i in (*.md) do pandoc -s ^
	--css styles/html_style.css ^
	-f markdown -t html "%%~fi" ^
	-o "%%~dpni.html" ^
    --metadata title=%lib_name%

:: Move all html files to html folder
FOR /R "html\temp_md" %%x in (*.html) do move "%%x" html

:: Delete temp folders
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
FOR /R "src\md" %%i in (*.md) do ( ^
	if "%%~ni" neq "00_Table_Of_Contents" ( ^
		if "%%~ni" neq "01_Startpage" ( ^
			copy "%%i" "pdf\temp\md" ^
		) ^
	) ^
)

:: Merge md files to one temporary documentation
TYPE pdf\temp\md\*.md >> pdf\temp\Temp1.md

copy /b "pdf\temp\Temp1.md" + "src\_defs\Open_Details.md" "pdf\temp\Temp2.md"

:: Generate temporary html help file
pandoc -s ^
	--css styles\pdf_style.css ^
	-f markdown -t html pdf\temp\Temp2.md ^
	-o pdf\temp\html\03_Temp.html ^
	--metadata title=%lib_name% 

:: Generate start page 
pandoc -s ^
	--css styles\pdf_style.css ^
	-f markdown -t html src\md\01_Startpage.md ^
	-o pdf\temp\html\01_Startpage.html ^
	--metadata title=%lib_name% 

:: Generate table of contents page 
pandoc -s ^
	--css styles\pdf_style.css ^
	-f markdown -t html src\md\00_Table_Of_Contents.md ^
	-o pdf\temp\html\02_Table_Of_Contents.html ^
	--metadata title=%lib_name% 

FOR /F "tokens=*" %%G IN ('dir /b /s pdf\temp\html\*.html') DO TYPE "%%G" >> pdf\temp\html\Tmp_Merge.html 

wkhtmltopdf ^
	--header-left %lib_name% ^
	--header-right [page]/[toPage] ^
	--header-line ^
	--header-spacing 10 ^
	--margin-top 20 ^
	--margin-left 15 ^
	--margin-bottom 20 ^
	--disable-smart-shrinking ^
	--enable-local-file-access ^
	pdf\temp\html\Tmp_Merge.html ^
	pdf\%lib_name%.pdf