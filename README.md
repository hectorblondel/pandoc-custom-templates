A set of custom templates for pandoc

# Setup

## Automatically

Setup template : `./keep_template.sh centrale_supelec_report`

Run for a specific markdown file : `./export_markdown.sh centrale_supelec_report test.md`

### Some rules for avoiding errors : 

- Do not use latin-1 symbols in a code block (e.g \`̀marché\` should be written as \`marche\`)

## Manually


Setup template : 

1. Clone this repo. For a given LaTeX template, replace `$template_location$` by the location of pandoc templates in your computer
(usually `/home/$USER/.local/share/pandoc/templates/`).

2. Copy the file to the template location

Run :

3. For instance, you can run : 

```bash
pandoc test.md -o test.pdf --from markdown --template centrale_supelec_report --listings
```


# Parameters

| Template         | Parameters |
|--|--|
|centrale_supelec_report| class, author, author2, title document_type , table_of_content |

Example of parameters :
```yaml
class: Parcimonie, structure et acquisiton comprimée #name of the class
author: Hector Blondel
author2 : Aurélian Pinet
title: TD compressive sensing
document_type: Rapport de TD
table_of_content: true
```

# TO-DO

- [ ] Add possibility to mut a list of authors     
- [ ] Add a `\textsc{}` for last names
- [ ] Automatically detect errors for latin-1 symbols inside codeblocks








The [pandoc-templates] repository contains default templates for [pandoc].

If you use custom templates, we recommend forking this
repository, so that you can integrate changes to the default
templates in future pandoc releases.

This repository is a subtree of [pandoc]; it will be updated
each time there is a new pandoc release.  However, changes to
templates are made first in [pandoc]; thus, issues and pull
requests should be made [pandoc]'s issue tracker rather than
here.

[pandoc]: https://github.com/jgm/pandoc
[pandoc-templates]: https://github.com/jgm/pandoc-templates

All of the templates in this repository are dual licensed, under both
the GPL (v2 or higher, same as pandoc) and the BSD 3-clause license
(included below).

Copyright (c) 2014--2019, John MacFarlane

All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright
  notice, this list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above
  copyright notice, this list of conditions and the following
  disclaimer in the documentation and/or other materials provided
  with the distribution.

* Neither the name of John MacFarlane nor the names of other
  contributors may be used to endorse or promote products derived
  from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
