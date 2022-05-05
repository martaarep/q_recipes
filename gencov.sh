#!/bin/bash

while [ $# -gt 0 ]; do
   if [[ $1 == *"--"*  ]]; then
        param="${1/--/}"
        declare $param="$2"
   fi
  shift
done

flutter test --coverage
if [[ "$withWidgetTests" == "true" ]]; then
     lcov --remove coverage/lcov.info 'lib/generated/*' 'lib/configuration/*' '**/*.freezed.dart' '**/*.g.dart' -o coverage/lcov.info
else
    lcov --remove coverage/lcov.info 'lib/generated/*' 'lib/configuration/*' '**/*.freezed.dart' '**/*.g.dart' '**/widgets/**' '**/screens/**' '**/pages/**' '**/models/**' '**/datasources/**' '**/current_user_provider.dart' -o coverage/lcov.info
fi
genhtml coverage/lcov.info --output=coverage/html && open coverage/html/index.html

