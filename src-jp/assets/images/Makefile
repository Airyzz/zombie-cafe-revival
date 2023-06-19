all : c_16bit

c_16bit :
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src characterParts.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src furniture.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src furniture2.png

	../../spfw/bin/cctpacker -t rgba4444 -solidify -p -src characterParts.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -p -src furniture.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -p -src furniture2.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src ingameUiImages.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src loading.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src mapTiles.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src menuImages.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src menuTitleImages.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -p -src recipeImages.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -p -src recipeImages2.png
	
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src iphone_menuImages.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src iphone_menuTitleImages.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src iphone_ingameUiImages.png

	../../spfw/bin/cctpacker -t rgba4444 -solidify -src iphone4_menuImages.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src iphone4_menuTitleImages.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src iphone4_ingameUiImages.png

	../../spfw/bin/cctpacker -t rgba4444 -solidify -src iphone3_ingameUiImages.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src iphone3_mapTiles.png

	../../spfw/bin/convert -scale 50% furniture_preview.png iphone3_furniture.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src iphone3_furniture.png -o iphone3_furniture

	../../spfw/bin/convert -scale 50% furniture2_preview.png iphone3_furniture2.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src iphone3_furniture2.png -o iphone3_furniture2

	../../spfw/bin/convert -scale 50% recipeImages_preview.png iphone3_recipeImages.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src iphone3_recipeImages.png -o iphone3_recipeImages

	../../spfw/bin/convert -scale 50% recipeImages2_preview.png iphone3_recipeImages2.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src iphone3_recipeImages2.png -o iphone3_recipeImages2

	../../spfw/bin/convert -scale 50% characterParts_preview.png iphone3_characterParts.png
	../../spfw/bin/cctpacker -t rgba4444 -solidify -src iphone3_characterParts.png -o iphone3_characterParts

clean :
	rm *.pvrt *.cct

