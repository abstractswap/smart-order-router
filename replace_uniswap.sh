PACKAGES="permit2-sdk sdk-core universal-router-sdk v3-sdk router-sdk uniswapx-sdk v2-sdk v4-sdk"

for pkg in $PACKAGES; do
    find . -type f -name "*.ts" -exec grep -l "@uniswap/$pkg" {} + | xargs -I {} sed -i '' "s|@uniswap/$pkg|@abstractswap/$pkg|g" {}
done
