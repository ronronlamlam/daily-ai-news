#!/bin/bash

# Daily AI News Site Update Script
# Run this script to update the news site and submit sitemap to Google

SITE_DIR="/root/.openclaw/workspace/ai-news-site"
DATE=$(date +%Y-%m-%d)

echo "=== AI News Site Update - $DATE ==="

# Update lastmod in sitemap
sed -i "s/<lastmod>.*<\/lastmod>/<lastmod>$DATE<\/lastmod>/" "$SITE_DIR/sitemap.xml"

# Submit sitemap to Google Search Console
# Replace with your actual site URL
SITE_URL="http://47.84.122.8"
SITEMAP_URL="$SITE_URL/sitemap.xml"

echo "Submitting sitemap to Google Search Console..."
curl -X GET "https://www.google.com/ping?sitemap=$SITEMAP_URL"

echo ""
echo "=== Update complete ==="
echo "Sitemap submitted: $SITEMAP_URL"
