#!/usr/bin/env bash
GEN=node_modules/.bin/purescript-react-wrapper-gen

echo "Generating..."
rm -rf src
mkdir -p src/SemanticUI
find node_modules/semantic-ui-react/src/ -name '[A-Z]*.js' \
  | grep -v lib \
  | xargs $GEN --base node_modules/semantic-ui-react/dist -m SemanticUI --prefix semantic-ui-react/dist/ -o src --default
