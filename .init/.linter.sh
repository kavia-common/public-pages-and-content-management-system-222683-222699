#!/bin/bash
cd /home/kavia/workspace/code-generation/public-pages-and-content-management-system-222683-222699/nextjs_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

