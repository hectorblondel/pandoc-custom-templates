#/bin/bash

# Vérifier si un fichier est passé en argument
if [[ $# -eq 0 || $# -eq 1  ]]; then
    echo "Veuillez fournir un template et un nom de fichier en argument."
    exit 1
fi


# Récupérer le nom du fichier sans l'extension
template_folder="/home/$USER/.local/share/pandoc/templates/"
filename=$(basename -- "$2")
target_path=$(dirname "$2")
echo "target path is $target_path"
#resource_path=$target_path":./custom_templates/centrale_supelec_report/"
resource_path=".:./custom_templates/centrale_supelec_report/"
ls /home/hector/PROJECTS/pandoc-templates/custom_templates/centrale_supelec_report/
echo "resource path is : $resource_path"
title_raw="${filename%.*}"
title=$(echo "$title_raw" | tr '_' ' ')

# Auteur et date actuelle
# author="Hector Blondel"
# current_date=$(date +"%Y-%m-%d")

# # Ajouter l'en-tête au début du fichier
# header="---
# title: \"$title\"
# author: [\"$author\"]
# date: \"$current_date\"
# titlepage : true
# ---
# "

# # Insérer l'en-tête en haut du fichier
# temp_file=$(mktemp)
# echo "$header" | cat - "$1" > "$temp_file" && mv "$temp_file" "$1"

#echo "L'en-tête a été ajouté avec succès au fichier $1"
echo "executing command pandoc $filename -o $resource_path/$title_raw.pdf --from markdown --template $1 --listings --resource-path $resource_path"

pandoc $filename -o $target_path/$title_raw.pdf --from markdown --template $1 --listings --resource-path $resource_path