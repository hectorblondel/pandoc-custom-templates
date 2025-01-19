A set of custom templates for pandoc


# Setup

## Export a template

- Install pandoc (https://github.com/jgm/pandoc)

- Just run : `./scripts/keep_template.sh centrale_supelec_report`

**To use a template on a markdown file, you can run :**

```bash
pandoc test.md -o test.pdf --template centrale_supelec_report --listings
```


to convert a markdown file `./scripts/pretify_markdown.sh centrale_supelec_report test.md`

### Some rules for avoiding errors : 

- Do not use latin-1 symbols in a code block (e.g \`̀marché\` should be written as \`marche\`)

## Export template mannualy


Setup template : 

1. Clone this repo. For a given LaTeX template, replace `$template_location$` by the location of pandoc templates in your computer
(usually `/home/$USER/.local/share/pandoc/templates/`).

2. Copy the file to that template location with all necessary images.

Run :

3. For instance, 

# Parameters

| Template         | Parameters |Preview | 
|--|--|--|
|centrale_supelec_report| class, author, author2, title document_type , table_of_content | 
![](custom_templates/centrale_supelec_report/example.pdf) |

|centrale_supelec_small| author, author2, title | 
![](custom_templates/centrale_supelec_small/example.pdf) |



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
- [ ] Improve syntax highlighting for `\lstlisting`
- [x] Automatically detect errors for latin-1 symbols inside codeblocks



