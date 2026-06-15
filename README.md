<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Intro ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

# Template_Library_Documentation

This template folder can be used to create library documentation in **Markdown**.

The output formats are: 
- **HTML**: can be imported into PLCnext Engineer to provide context-sensitive help for functions, function blocks and HMI symbols
- **PDF**: can be uploaded to the PLCnext Store to provide a printable documentation

<br>

<img src="./_images/Workflow.png" alt="drawing" width="800"/>

<br>

The purpose of this documentation template is to:
- let you focus entirely on the content of your documentation,
- ensure that all information relevant to library users is included, 
- ensure that both **HTML** and **PDF** contain the same information and
- eliminate the need to worry about formatting.

<br>
To achieve this, the template provides Markdown template files, a ready-to-use batch script, and prepared stylesheets.

<br>

--------------------------------

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Table of contents ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

# Table of contents

- [Template\_Library\_Documentation](#template_library_documentation)
- [Table of contents](#table-of-contents)
- [Required software](#required-software)
- [Known issues](#known-issues)
- [Creation of the documentation](#creation-of-the-documentation)
- [Integration as HTML context-sensitive help in PLCnext Engineer](#integration-as-html-context-sensitive-help-in-plcnext-engineer)
- [Additional Tips](#additional-tips)
  - [Template-related tips](#template-related-tips)
  - [Tips for Visual Studio Code](#tips-for-visual-studio-code)

--------------------------------

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Required software ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="required_sw">

# Required software

To generate the output files, the following software must be installed on your PC:

| Required software | Download link                          | Costs          |
|-------------------|----------------------------------------|----------------|
|**Pandoc**         | https://pandoc.org/installing.html  	 | free of charge |
|**wkhtmltopdf**    | https://wkhtmltopdf.org/downloads.html | free of charge |



It may be necessary to add both tools to your Windows system environment variables. This can be done via the system variables editor under "**Path**":

<img src="./_images/SystemEnvironmentVariables.png" alt="drawing" width="400"/>

Select "**Path**" and click on "**Edit**". Then create two new entries here. The default paths are shown below—please verify them on your system first:

<img src="./_images/PathsSystemVariables.png" alt="drawing" width="400"/>

Additionally, you will need a text editor to modify the Markdown files. Any basic editor will work.

- **Notepad++**: Add-ons provide additional convenience features
- <span style="color:#0098a1;">**Recommendation:** </span> *Visual Studio Code*, which offers built-in features and a live preview of your documentation before generating it via the batch script.

</div>

--------------------------------

<br>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Known issues ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="known_issues">

# Known issues

For **PLCnext Engineer versions < 2024.6** the HTML5 help works for visible library content only. 

If a function or function block is restricted to protect it from read access, the HTML help cannot be opened via the PLCnext Engineer context menu:

<img src="./_images/PLCnextEngOpenFbHelp.png" alt="drawing" width="400"/>

However, for **PLCnext Engineer ≥ 2024.6**, HTML help also works for restricted blocks.

</div>

--------------------------------

<br>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Creation of the documentation ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="creation">

# Creation of the documentation

Follow these steps to build your documentation:

1. **Prepare the template** : Copy the template folder to your PC and rename it to the name of your library.

2. **Edit the Markdown files**: 

    Navigate to "**src/md**"

    This folder contains template files and an image directory
    - Store images in the "**_images**" directory
    - The Markdown template files can be modified, duplicated, or removed as needed
    - Each file contains comments explaining what to do in each section.
    - It is recommended to follow the order defined by the filename prefixes

        <div style="border: 1px solid #ffffff; padding: 10px 10px 10px 10px;"> <span style="color:#FFA500;"><strong>! IMPORTANT !</strong></span> 
        The filename prefixes determine the chapter order in the PDF. When adding new files, always include a prefix. </div> <br>
    
    - The function, function block and HMI symbol documentation is located in the "**Components**" subfolder
    - You can create additional subfolders for grouping (a sample group folder is already included and can be removed if not needed)

    
3. **Generate output files**: 

    Once all Markdown files are ready, run **make.bat** from the root directory:
    - Double-click in File Explorer, or
    - Run in the console: `.\make.bat`

4. **Check output**: 

    The output files are available in the folders "**html**" and "**pdf**". 
     - In "**html**" you will find a general documentation file, which has the name of your library. In addition, there are HTML files for each function, function block or HMI symbol in the "**Components**" folder. These HTML files can be used in PLCnext Engineer to provide component-related context help.
     
     <div style="border: 1px solid #ffffff; padding: 10px 10px 10px 10px;"> <span style="color:#FFA500;"><strong>Please note</strong></span>: These component-related HTML files cannot be displayed directly in a web browser. They serve as redirects to the corresponding sections within the full HTML documentation and function only after integration in PLCnext Engineer.</div><bR>

     - In "**pdf**" the complete documentation in PDF format can be found.

</div>

<br>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Integration as HTML context-sensitive help in PLCnext Engineer ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="import">

# Integration as HTML context-sensitive help in PLCnext Engineer

**Requirement**: PLCnext Engineer ≥ 2023.3

1.  <div style="border: 1px solid #ffffff; padding: 10px 10px 10px 10px;"><span style="color:#FFA500;"><strong>! IMPORTANT !</span> Perform this step before creating your PLCnext project:</strong> <br>
    In PLCnext Engineer, go to "<strong>Extras</strong>" > "<strong>Options</strong>". In the section "<strong>Tool</strong>" > "<strong>Description</strong>" you can define the location for the stylesheet file used for the documentation. Set the path to the following folder: &lt;Path to your library documentation folder&gt;/html/styles<br> <br>

    If your project was created previously, set the stylesheet path, create a new project and use the option "**File**" > "**Import from another Project**" to add all FBs/FUs/symbols to the new project using the correct stylesheet.</div>

2. Integration of the complete documentation:
    - Double-click on "**Project**"
    - Go to "**Description**"
    - Select the "**Import from HTML file**" button<br><br>
    <img src="./_images/Full_HTML_Import.png" alt="drawing" width="800"/>

3.  Integration of the component-related help files: 
    - For functions, function blocks and HMI symbols there is an editor "**Description**" (next to the worksheets) in PLCnext Engineer. 
    - Here click the "**Import from HTML file**" button above the field for the "**Description**". 
    - Select the HTML file from the documentation folder > "**html/Components**" that is suitable for the respective FB/FU/symbol. Repeat this step for each component in your project. <br><br>
    <img src="./_images/Component_HTML_Import.png" alt="drawing" width="800"/>

4.  After programming or symbol creation, create the library via "**File**" > "**Release As Library**".

For the library user, context-sensitive help for function blocks and functions is now available via SHIFT + F1.
The help will be displayed in the user's default browser and show the information of the respective component.

</div>

--------------------------------

<br>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Additional Tips ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="tips">

# Additional Tips

<div id="template-related_tips">

## Template-related tips

- Follow the file prefix order
- Read template comments carefully
- Organize large projects with many components into groups (see Group_1 example)
- Use internal links to improve navigation between sections
- Stylesheets can be customized in: "**/src/_defs**"
- To force a page break in the PDF, add the following to your Markdown file: `<div class="pagebreak"> </div>`

</div>

<div id="vsc_tips">

## Tips for Visual Studio Code

- Open the entire documentation folder in Visual Studio Code: Go to "**File**" > "**Open Folder**".
- Theme settings: I recommend the use of the theme "**Dark Modern**" or "**Dark +**"- they are easy on the eyes and highlight the comments in green, so they become well-visible. To change the theme, go to "**File**" > "**Preferences**" > "**Theme**" > "**Color Theme**"
- Preview editor: In Visual Studio Code you can open a preview window, e.g. to check if the syntax is correct. Please note, that the stylesheet is not considered here. <br><br>
<img src="./_images/Preview.png" alt="drawing" width="800"/>

- Run the "**make.bat**" in Visual Studio Code directly: Via "**View**" > "**Terminal**" you can open the terminal in the currently opened folder. Here you can execute the batch script directly: `.\make.bat`

</div>

</div>
