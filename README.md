# book-tutorial
A tutorial, with examples, for a free writing environment using existing, well-supported tools.

Tools used:
- Obsidian
- Pandoc
- Git
- GitHub


## Installing Git

Git is used for keeping track of changes in your documents, and for syncing them up to GitHub for backing up the contents. It is a powerful tool intended to support full blown software development. It is a technical tool for technical folks, but we are not even going to be scratching the surface of its features here.

Install it from <a href="https://git-scm.com">https://git-scm.com</a>, following the instructions for your Windows, Mac, Linux, etc.

For convenience, if you are using Windows, install this: <a href="https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.2/Git-2.56.0.2-64-bit.exe">https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.2/Git-2.56.0.2-64-bit.exe</a>.

Once git has been installed, we are going to use it to download the file you are reading and the other sample files that are part of this project!

Open your operating system's terminal application (on Windows - "Command Prompt" on Mac or Linux - "Terminal") and run:


```
git clone https://github.com/mabellbooks/book-tutorial.git
cd book-tutorial
```

## Obsidian

This is your text editor, word processor, note-organizer. This is where you actually do you writing.

Get it at <a href="https://obsidian.md">https://obsidian.md</a>. Follow the instructions there to install it.

Once installed, run it and use its "Open folder as vault" feature to open the folder that you downloaded this tutorial into. You should see a structure like:

```
chapters
    001
    002
README
```

<img src="images/obsidian.png" alt="screenshot of Obsidian open on chapter 1">

## Pandoc

This is what you use when you want to take a multiple-file book (1 file per chapter, for example) and assemble into an EPUB for uploading to a store, or a PDF for sending to be printed, or a Word doc for a beta reader to make notes. It is almost too good at converting between formats.

In order to produce PDFs (and you *will* want to produce PDFs), you'll need to also install some variant of *LaTex*, which is the lower-level tool that Pandoc uses for formatting the PDF. The exact instructions for this are going to vary by operating system.

Full instructions are available at <a href="https://pandoc.org/installing.html">https://pandoc.org/installing.html</a>.

If those instructions are overwhelming, the following provides direct links to downloadable executables.

### Windows

1. Install Pandoc by downloading and running <a href="https://github.com/jgm/pandoc/releases/download/3.12.1/pandoc-3.12.1-windows-x86_64.msi">https://github.com/jgm/pandoc/releases/download/3.12.1/pandoc-3.12.1-windows-x86_64.msi</a>
2. Install MikTek (the LaTex engine) by downloading and running <a href="https://miktex.org/download/ctan/systems/win32/miktex/setup/windows-x64/basic-miktex-25.12-x64.exe">https://miktex.org/download/ctan/systems/win32/miktex/setup/windows-x64/basic-miktex-25.12-x64.exe</a>.


### Linux

*under construction*

### Mac

*under construction*

## Testing

In your command prompt, run the following:

```
pandoc README.md -o readme.pdf
```

If everything installed correctly, Pandoc will produce a PDF of this very tutorial.


## Specifying title, author, date, etc

Pandoc can uses YAML (Yet Another Markup Language) to control the formatting of the book. The YAML contents can be embedded in the Markdown files themselves, or it can be stored in a separate file.

The example here is called **defaults.yaml** and it contains:

```
metadata:
  title: Your Title
  author: Author Name
  lang: en-US
  date: '2026'

top-level-division: chapter

table-of-contents: true

number-sections: true

variables:
    documentclass: book
    classoption:
    - oneside
    linestretch: 1.15
    indent: false
    parskip: 6pt
    geometry:
      - paperwidth=6in
      - paperheight=9in
      - margin=0.75in
```

Go ahead and edit defaults.yaml using any text editor (notepad, for example), to set the title and author.

Full documentation of what all this means is available on the Pandoc website.


## Building a Book!

Now, everything is ready to create a full PDF of the "book" in this example.

On Mac or Linux, run:

```
pandoc chapters/*.md -o book.pdf -d defaults.yaml
```

On Windows, run:


```
pandoc chapters\*.md -o book.pdf -d defaults.yaml
```

If it works, you should have a fully formatted book with a title page, table of contents, and page-breaks between each chapter.

Creating an EPUB or Word file is as easy as changing the name of the output file:


```
pandoc chapters/*.md -o book.epub -d defaults.yaml
pandoc chapters/*.md -o book.docx -d defaults.yaml
```

## Versioning using Git

*under construction*

## Syncing with your own private GitHub repo

*under construction*
