UID=$(id -u)
GID=$(id -g)

docker run --rm \
  -u "${UID}":"${GID}" \
  -v "${PWD}":/local openapitools/openapi-generator-cli:v7.13.0 generate \
  -i https://raw.githubusercontent.com/uol-esis/CivicSage-OpenAPI/v0.1.0/openapi.yaml \
  -g javascript \
  -t /local/templates \
  -o /local
