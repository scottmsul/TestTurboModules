rm -rf ./MyApp/ios/build
rm -rf ./MyApp/node_modules
rm -rf ./RTNCalculator/generated
cd MyApp
yarn install
yarn add ../RTNCalculator
cd ..
node MyApp/node_modules/react-native/scripts/generate-codegen-artifacts.js --targetPlatform ios --path MyApp/ --outputPath RTNCalculator/generated/
cd MyApp
cd ios
bundle install
RCT_NEW_ARCH_ENABLED=1 bundle exec pod install
cd ../..
