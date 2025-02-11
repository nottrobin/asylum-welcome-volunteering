# Upload image
IMAGE_URL="$(./upload-image.sh | jq -r '.link')"

# Create post
curl -X POST https://www.asylum-welcome.org/wp-json/wp/v2/community_news \
     -H "Content-Type: application/json" \
     -u "$ASYLUMWELCOME_CREDS" \
     --data-binary @- << EOF
{
  "title": {"raw": "'title' (`date`)"},
  "content": {"raw": "'content'"},
  "acf": {
    ""display_date_time": "`date`",
    "content_title": "ACF 'content_title'",
    "description": "ACF 'description'<br/><img src=\"$IMAGE_URL\" />",
    "read_more_link": "https://robinwinslow.uk"
  }
}
EOF
