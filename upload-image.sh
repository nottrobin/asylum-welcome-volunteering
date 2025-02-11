curl -X POST \
     -H "content-type: image/jpeg" \
     -H "content-disposition: attachment; filename=hind.jpeg" \
     --data-binary @hind.jpeg \
     -u "$ASYLUMWELCOME_CREDS" \
     https://www.asylum-welcome.org/wp-json/wp/v2/media
