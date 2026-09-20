# dotemp

A Stata package that inserts a clean, boxed metadata header into your do-files — title, project, purpose, author, contact, and dates — so every file in a project starts the same way.

## Installation

```stata
net install dotemp, from("https://raw.githubusercontent.com/armanmahmud1/do-template/main/") replace
```

## Usage

```stata
dotemp, title(01_cleaning) project(household_survey)

dotemp, title(02_analysis) project(household_survey) ///
    purpose(regression analysis) author(Arman Mahmud) email(armanmahmud.du18@gmail.com)

dotemp, title(03_export) project(household_survey) location(C:\Users\Arman\Projects\do)
```

`dotemp` downloads a do-file template from this repo and writes a header like:

```
╔═══════════════════════════════════════════════════════════════════════════════╗
║-------------------------------------------------------------------------------║
║  TITLE:           01_cleaning
║  PROJECT:         household_survey
║  PURPOSE:
║-------------------------------------------------------------------------------║
║  AUTHOR:
║  CONTACT:
║-------------------------------------------------------------------------------║
║  CREATED:         20 Sep 2026
║  MODIFIED:        20 Sep 2026
╚═══════════════════════════════════════════════════════════════════════════════╝
```

## Syntax

```
dotemp , title(string) project(string) [purpose(string) author(string) email(string) location(string)]
```

| Option | Required | Description |
|---|---|---|
| `title()` | Yes | Name of the do-file to create |
| `project()` | Yes | Project the do-file belongs to |
| `purpose()` | No | What the do-file does |
| `author()` | No | Author name |
| `email()` | No | Author contact email |
| `location()` | No | Save folder; defaults to `c(pwd)` |

Full details: `help dotemp` after installation.

## Files

| File | Purpose |
|---|---|
| `dotemp.ado` | Program code |
| `dotemp.sthlp` | Help file |
| `dotemp.pkg` | Package descriptor for `net install` |
| `stata.toc` | Table of contents so Stata can find the package in this repo |

## Author

**Arman Mahmud** </br>
Email: armanmahmud.du18@gmail.com </br>
Website: [www.arman-mahmud.com](https://www.arman-mahmud.com) </br>
GitHub: [@armanmahmud1](https://github.com/armanmahmud1)
