#!/bin/sh -e

set
echo "//registry.npmjs.org/:_authToken=${NPM_TOKEN}" >$HOME/.npmrc
echo "--- tslint"
npm run tslint
echo "--- build"
npm run build
echo "Output:"
ls dist
if [ "x$BUILDKITE_BRANCH" = "xmaster" ] ; then
        echo "--- publishing"
        npm publish
fi
