{smcl}
{* *! version 1.0.0  20sep2026}{...}
{viewerjumpto "Syntax" "dotemp##syntax"}{...}
{viewerjumpto "Description" "dotemp##description"}{...}
{viewerjumpto "Options" "dotemp##options"}{...}
{viewerjumpto "Examples" "dotemp##examples"}{...}
{viewerjumpto "Author" "dotemp##author"}{...}
{title:Title}

{phang}
{bf:dotemp} {hline 2} Create a formatted do-file header template


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmd:dotemp} {cmd:,} {opt title(string)} {opt project(string)}
[{opt purpose(string)} {opt author(string)} {opt email(string)} {opt location(string)}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:{opt title(string)}}name of the do-file to create (required){p_end}
{synopt:{opt project(string)}}name of the project the do-file belongs to (required){p_end}
{synopt:{opt purpose(string)}}short description of what the do-file does{p_end}
{synopt:{opt author(string)}}name of the author{p_end}
{synopt:{opt email(string)}}contact email of the author{p_end}
{synopt:{opt location(string)}}folder to save the new do-file in; defaults to {cmd:c(pwd)}{p_end}
{synoptline}


{marker description}{...}
{title:Description}

{pstd}
{cmd:dotemp} downloads a do-file template and stamps it with a formatted
header block containing the title, project, purpose, author, contact,
and creation/modification dates. It's meant to standardize do-file
headers across a project or team, so every file starts with the same
readable, boxed-in metadata block.


{marker options}{...}
{title:Options}

{phang}
{opt title(string)} names the resulting do-file, e.g. {cmd:title(01_cleaning)}
creates {cmd:01_cleaning.do} in {opt location()}.

{phang}
{opt project(string)} labels the project the do-file belongs to.

{phang}
{opt purpose(string)} briefly states what the do-file is for. Optional.

{phang}
{opt author(string)} states who created the file. Optional.

{phang}
{opt email(string)} states the author's contact email. Optional.

{phang}
{opt location(string)} sets the folder where the new do-file is saved.
Defaults to the current working directory, {cmd:c(pwd)}.


{marker examples}{...}
{title:Examples}

{phang}{cmd:. dotemp, title(01_cleaning) project(household_survey)}{p_end}

{phang}{cmd:. dotemp, title(02_analysis) project(household_survey) purpose(regression analysis) author(Arman Mahmud) email(armanmahmud.du18@gmail.com)}{p_end}

{phang}{cmd:. dotemp, title(03_export) project(household_survey) location(C:\Users\Arman\Projects\do)}{p_end}


{marker author}{...}
{title:Author}

{pstd}Arman Mahmud{p_end}
{pstd}Email: {browse "mailto:armanmahmud.du18@gmail.com":armanmahmud.du18@gmail.com}{p_end}
{pstd}Website: {browse "https://www.arman-mahmud.com":www.arman-mahmud.com}{p_end}
{pstd}GitHub: {browse "https://github.com/armanmahmud1/do-template":github.com/armanmahmud1/do-template}{p_end}
