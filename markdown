# headers
# (without double qutation marks("))
"# h1 header"
"###### h6 header"

# blockquotes
> first level and paragraph
>> second level and first paragraph
>
> first level and second paragraph

# collapsed text
To create a collapsible section (collapsed by default) showing the text "Collapsed Item Title", use this:
<details>
    <summary>Collapsed Item Title</summary>
    <p>Collapsed content</p>
    <p>Other collapsed content.</p>
</details>

# lists
Sub-bullets can be done with 2+ spaces or 1 tab
## unordered - use *, +, or -
* Red
  * sub-bullet
    * sub-sub-bullet
* Green
  - sub with dash
  + sub with plus
* Blue

## ordered
1. First
  1. First sub-item <-- this is the best supported format
2. Second
  * Unordered  <-- this also appears to be a widely supported format
3. Third
  a. Lettered  <-- there is mixed support for this format
4. Fourth
  i. using roman numerals  <-- there is mixed support for this format
  ii. more stuff 

## check list
There is limited support for rendering check lists:
- [ ] incomplete task
    - [ ] incomplete sub-task
    - [x] complete sub-task
- [x] complete task


# code
## code block with 4 spaces/1 tab
regular text
        code code code

## in-line code
or:
Use the `printf()` function

## code block with syntax support
or a code block (optionally specifying the language, more details here: https://rdmd.readme.io/docs/code-blocks):
```shell
alias ltr='ls -ltr'
alias latr='ls -latr'
```

## key bindings
<kbd>⌘F</kbd>

# hr's (horizontal rules) - three or more of the following
***
---
___

# links
The "Title" is optional
This is [an example](http://example.com "Title") inline link.

## Links to Headings
Assuming you have a heading called `# My First Heading` then link is the case-insensitive string with spaces replaced by dashes:
[Visible Link Text](#my-first-heading "Hover-text link title")

# image
![Alt Text](/path/to/file.png)

# formatting
Italic:
*em* _em_

Bold: 
**strong** __strong__

~~strikethrough~~

# Tables

## Table Alignment
The alignment applies to the table data, not the header.

Left-aligned Stuff | Right-aligned Stuff | Center-aligned Stuff
| :--- | ---: | :---:
Some left stuff   | Some right stuff  | Some center stuff 
Some left stuff   | Some right stuff  | Some center stuff 

## Special Characters in Tables
First Header  | Second Header
------------- | -------------
Some stuff   | things about stuff
Other Stuff  |  A \| B
