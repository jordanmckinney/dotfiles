echo ""
echo "Syncing Downloads to SSD..."
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

rsync -av --progress --delete --ignore-errors --exclude='.Trashes' --exclude='.Spotlight-V100' --exclude='.TemporaryItems' --exclude='.DocumentRevisions-V100' --exclude='.DS_Store' --exclude='.fseventsd' /Users/jordan/Downloads /Volumes/SSD/

echo ""
echo "Syncing Desktop to SSD..."
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

rsync -av --progress --delete --ignore-errors --exclude='.Trashes' --exclude='.Spotlight-V100' --exclude='.TemporaryItems' --exclude='.DocumentRevisions-V100' --exclude='.DS_Store' --exclude='.fseventsd' /Users/jordan/Desktop /Volumes/SSD/

echo ""
echo ""
echo "Syncing Writing/Ideas to SSD..."
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

rsync -av --progress --delete --ignore-errors --exclude='.Trashes' --exclude='.Spotlight-V100' --exclude='.TemporaryItems' --exclude='.DocumentRevisions-V100' --exclude='.DS_Store' --exclude='.fseventsd' /Users/jordan/Documents/theory /Volumes/SSD/Documents

echo ""
echo ""
echo "Syncing Journal to SSD..."
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

rsync -av --progress --delete --ignore-errors --exclude='.Trashes' --exclude='.Spotlight-V100' --exclude='.TemporaryItems' --exclude='.DocumentRevisions-V100' --exclude='.DS_Store' --exclude='.fseventsd' /Users/jordan/Documents/journal /Volumes/SSD/Documents

echo ""
echo ""
echo "Syncing Dev to SSD..."
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

rsync -av --progress --delete --ignore-errors --exclude='.Trashes' --exclude='.Spotlight-V100' --exclude='.TemporaryItems' --exclude='.DocumentRevisions-V100' --exclude='.DS_Store' --exclude='.fseventsd' --exclude='node_modules' /Users/jordan/Development /Volumes/SSD/

echo ""
echo ""
echo "Syncing SSD to HDD..."
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

rsync -av --progress --delete --ignore-errors --exclude='.Trashes' --exclude='.Spotlight-V100' --exclude='.TemporaryItems' --exclude='.DocumentRevisions-V100' --exclude='.DS_Store' --exclude='.fseventsd' /Volumes/SSD /Volumes/HDD
