// Test headings.

---
#show heading: it => text(blue, it.body)

=
No heading

---
// Different number of equals signs.

= Level 1
== Level 2
=== Level 3

// After three, it stops shrinking.
=========== Level 11

---
// Heading vs. no heading.

// Parsed as headings if at start of the context.
/**/ = Level 1
{[== Level 2]}
#box[=== Level 3]

// Not at the start of the context.
No = heading

// Escaped.
\= No heading

---
// Blocks can continue the heading.

= [This
is
multiline.
]

= This
  is not.

---
// Test styling.
= Heading

#set heading(family: "Roboto", fill: eastern)
#show heading: it => it.body
#show strong: it => it.body + [!]

===== Heading 🌍
#heading(level: 5)[Heading]
