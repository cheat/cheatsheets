# headers
= h1 header
== h2 header


# blocks
[quote, Somebody, Who is somebody]
____
Quote something
____
//
NOTE: Some note
//
[WARNING]
====
Some warning
====

# lists
.Un-ordered list with a title
* list item
** sub-list item
- hypen as sub-sub-list item
+
that continues at the next line
- {blank}
+
----
complex content of an item
----

[%reversed,start=4]
.Ordered list; reversed, started at 4
. ordered list item
.. ordered list sub-item
. another list item

# separating adjacent lists (surrounded by blank lines)
//-

# checklist
- [*] checked
- [x] also checked
- [ ] not checked

Description list item:: definition
[horizontal]
Description list item #2:: definition


# links
Automatic link http://example.com or
http://example.com[link with title and attributes,role=external,window=_blank]
link:../README.adoc[Relative link to open the README file]


# cross reference links
[[an-anchor]]inline anchor, [#other-anchor]#applied to a phrase#
Reference to <<an-anchor>> or to <<other-anchor,the other anchor>>


# image
image:image.png[Alt text, title="Inline image"]

.Block image title
[caption="Figure 1: ",link=http://example.com/image.png]
image::image.jpg[Alt text, 300, 200]


# code
....
literal block
....

:variable: 123
.Source code title
[source,asciidoc,subs="+quotes,attributes+",options="nowrap"]
----
:toc: right  # <1>
// with var substitution (attributes+)
:variable: definition, the value is {variable}
// with the markup substitution (+quotes)
// no wrapping long lines (nowrap)
----
<1> Asciidoctor sytax for the table of content

# include source code, stripping indentation
[source,asciidoc,indent=0]
----
include::doc/document.adoc[lines=5..10]
----

# formatting
*bold*, **un**constrained
_italic_, __un__constrained
`monospace`, ``un``constrained
`[underline]#Underline text#`
`[overline]#overline text#`
`[line-through]#strikethrough#`
`[blue line-through]*bold blue and line-through*.`

# comment
// text in the comment

# horizontal rules (hr)
'''

Non-breaking space {nbsp}
Break at the end of +
line

# tables
.Table title
[caption="Table 2: "]
|===
| Name | Description
//
| Asciidoctor
| Awesome way to write documentation
//
2+| This cell spans 2 columns
//
.2+| This cell spans 2 rows
//
| Line at the side of the spanned rows
| Another line
//
|===
