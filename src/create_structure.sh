
echo "Please enter your projects name:"
read ORDNER_NAME

if [ -d "$ORDNER_NAME" ]; then
  echo "Folder [ $ORDNER_NAME ] already exists."
  exit 1
fi

mkdir "$ORDNER_NAME"
echo "Folder [ $ORDNER_NAME ] created successfully."

cd "$ORDNER_NAME" || exit

mkdir docs logs scripts src tests
touch .env README.md

chmod 644 .env README.md
chmod 755 docs logs scripts src tests

echo "Project structure created successfully."


