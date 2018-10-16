
echo "############################## begin build"

rm pubspec.yaml
cp templates/pubspec-orm.yaml pubspec.yaml
pub get

pub run build_runner build

echo "############################## begin run"
rm pubspec.yaml
cp templates/pubspec-run.yaml pubspec.yaml
flutter packages get

echo "############################## end build"