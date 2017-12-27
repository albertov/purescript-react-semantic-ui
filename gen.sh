#!/usr/bin/env bash
GEN=node_modules/.bin/purescript-react-wrapper-gen

echo "Generating..."
rm -rf src
mkdir -p src/SemanticUI
find node_modules/semantic-ui-react/src/ -name '[A-Z]*.js' \
  | grep -v lib \
  | xargs $GEN --base node_modules/semantic-ui-react/dist -m SemanticUI --prefix semantic-ui-react/dist/ -o src --default
sed -i "s/input :: Option /input_ :: Option /g" src/SemanticUI/Input.purs
sed -i "s/input = opt/input_ = opt/g" src/SemanticUI/Input.purs

sed -i "s/rating :: Option /rating_ :: Option /g" src/SemanticUI/Rating.purs
sed -i "s/rating = opt/rating_ = opt/g" src/SemanticUI/Rating.purs

sed -i "s/progress :: Option /progress_ :: Option /g" src/SemanticUI/Progress.purs
sed -i "s/progress = opt/progress_ = opt/g" src/SemanticUI/Progress.purs

sed -i "s/options ::/options_ ::/g" src/SemanticUI/Dropdown.purs
sed -i "s/options =/options_ =/g" src/SemanticUI/Dropdown.purs

find src -name '*.js' -exec sed -i "s:dist/../src/:dist/commonjs/:g" {} \;
