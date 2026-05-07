roiManager("Deselect");
roiManager("Delete");
name = getTitle();
sname = split(name, ".");
selectImage(name);

run("Command From Macro", "command=[de.csbdresden.stardist.StarDist2D], args=['input':'"+name+"', 'modelChoice':'Versatile (fluorescent nuclei)', 'normalizeInput':'true', 'percentileBottom':'1.1', 'percentileTop':'99.99999999999999', 'probThresh':'0.6000000000000001', 'nmsThresh':'0.7', 'outputType':'ROI Manager', 'nTiles':'1', 'excludeBoundary':'2', 'roiPosition':'Stack', 'verbose':'false', 'showCsbdeepProgress':'false', 'showProbAndDist':'false'], process=[false]");


run("ROI Map");
rename(sname[0] + ".tiff");