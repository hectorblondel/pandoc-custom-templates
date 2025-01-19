# Exports the template to the default pandoc template folder


template_folder="/home/$USER/.local/share/pandoc/templates/"


if [ ! -d "$template_folder" ]; then
    echo "keep_template: No template folder has been found at $template_folder"
    exit 1
fi

#echo "$template_folder/$(basename $1)"


sed 's|\$template-location\$|'$template_folder'|g' custom_templates/$1/$1.latex > $template_folder/$1.latex
#cp $1 $template_folder/$(basename $1)
#echo $(dirname $1)/*.png
#ln -s $(dirname $1)/"$(basename $1 | cut -f 1 -d '.')"_images/* $template_folder

cp custom_templates/$1/*.png "$template_folder" 2>/dev/null
cp custom_templates/$1/*.jpg "$template_folder" 2>/dev/null
cp custom_templates/$1/*.jpeg "$template_folder" 2>/dev/null
