<!--

/*
Configure menu styles below
NOTE: To edit the link colors, go to the STYLE tags and edit the ssm2Items colors
*/
YOffset=150; // no quotes!!
XOffset=0;
staticYOffset=30; // no quotes!!
slideSpeed=20 // no quotes!!
waitTime=100; // no quotes!! this sets the time the menu stays out for after the mouse goes off it.
menuBGColor="black";
menuIsStatic="yes"; //this sets whether menu should stay static on the screen
menuWidth=150; // Must be a multiple of 10! no quotes!!
menuCols=2;
hdrFontFamily="verdana";
hdrFontSize="2";
hdrFontColor="white";
hdrBGColor="#170088";
hdrAlign="left";
hdrVAlign="center";
hdrHeight="15";
linkFontFamily="Verdana";
linkFontSize="2";
linkBGColor="white";
linkOverBGColor="#FFFF99";
linkTarget="_top";
linkAlign="Left";
barBGColor="#444444";
barFontFamily="Verdana";
barFontSize="2";
barFontColor="white";
barVAlign="center";
barWidth=20; // no quotes!!
barText="SIDE MENU"; // <IMG> tag supported. Put exact html for an image to show.

///////////////////////////

// ssmItems[...]=[name, link, target, colspan, endrow?] - leave 'link' and 'target' blank to make a header
ssmItems[0]=["Links"] //create header
ssmItems[1]=["PHCFM", "http://pottershouseministry.eu5.org", "_new"]
ssmItems[2]=["What's New", "http://pottershouseministry.eu5.org/new.php","_new"]
ssmItems[3]=["What's Hot", "http://pottershouseministry.eu5.org/hot.php", "_new"]
ssmItems[4]=["Message Forum", "http://pottershouseministry.eu5.org/forum", "_new"]
ssmItems[5]=["Link to Us", "http://pottershouseministry.eu5.org/link.htm", "_new"]

ssmItems[6]=["FAQ", "http://pottershouseministry.eu5.orgfaqs.htm", "_new", 1, "no"] //create two column row
ssmItems[7]=["Email", "http://pottershouseministry.eu5.org/contact.php", "_new",1]

ssmItems[8]=["External Links", "", ""] //create header
ssmItems[9]=["World CFM", "http://www.worldcfm.com", "_new"]
ssmItems[10]=["The Door", "http://www.thedoorpeoria.com/", "_new"]
ssmItems[11]=["Word Grub", "http://www.wordgrub.com", "_new"]

buildMenu();

//-->