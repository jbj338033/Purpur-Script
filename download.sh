VERSION=$(curl -s https://api.purpurmc.org/v2/purpur | \
    jq -r '.versions[-1]')
BUILD=$(curl -s https://api.purpurmc.org/v2/purpur/${VERSION} | \
    jq -r '.builds | .latest')
URL="https://api.purpurmc.org/v2/purpur/${VERSION}/${BUILD}/download"

curl -o purpur.jar $URL
