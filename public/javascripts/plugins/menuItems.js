
//One global variable to set, use true if you want the menus to reinit when the user changes text size (recommended):
resizereinit=true;

menu[1] = {
id:'menu1', //use unique quoted id (quoted) REQUIRED!!
fontsize:'100%', // express as percentage with the % sign
linkheight:30 ,  // linked horizontal cells height
hdingwidth:190 ,  // heading - non linked horizontal cells width
// Finished configuration. Use default values for all other settings for this particular menu (menu[1]) ///

menuItems:[ // REQUIRED!!
//[name, link, target, colspan, endrow?] - leave 'link' and 'target' blank to make a header
["Menu"], //create header
["MUSIC", "music.php", ""],
["VIDEOS", "videos.php",""],
["PICTURES", "flash/PHCFMFlashPhotoGallery/gallery.php", "_new"],
["GALLERIES", "galleries.php", ""],
//["FAQ", "faqs.php", "", 1, "no"], //create two column row, requires d_colspan:2 (the default)
["Email", "mailto:pottershouselucena@gmail.com", "",1],

<!--["External Links", "", ""], //create header -->
/*["JavaScript Kit", "http://www.javascriptkit.com", "_new"],
["Freewarejava", "http://www.freewarejava.com", "_new"],
["Coding Forums", "http://www.codingforums.com", "_new"]*/  //no comma after last entry

]}; // REQUIRED!! do not edit or remove

menu[2] = {  // REQUIRED!!  This menu explicitly declares all available options even if they are the same as the defaults
id:'menu2', //use unique quoted id (quoted) REQUIRED!!
/////////////////////////////////////
///////////// no quotes for these properties (numbers represent pixels unless otherwise noted): ////////////
/////////////////////////////////////
user_defined_stylesheet:false, //if true, prevents script from generating stylesheet for this menu
user_defined_markup:false, //if true, prevents script from generating markup for this menu
design_mode:false,  //if true, generates a report of the script generated/intended styles and markup (as a design aid)
menutop:160,     // initial top offset - except for top menu, where it is meaningless
menuleft:'100px',    // initial left offset - only for top menu, as pixels (can be a quoted percentage - ex: '50%')
keepinview:80,   // Use false (for not static) - OR - true or numeric top offset when page scrolls
menuspeed:20,    // Speed of menu sliding smaller is faster (interval of milliseconds)
menupause:500,   // How long menu stays out when mouse leaves it (in milliseconds)
d_colspan:3,     // Available columns in menu body as integer
allowtransparent:true, // true to allow page to show through menu if other bg's are transparent or border has gaps
barwidth:10,     // bar (the vertical cell) width
wrapbar:true,    // extend and wrap bar below menu for a more solid look (default false) - will revert to false for top menu
hdingwidth:208,  // heading - non linked horizontal cells width
hdingheight:25,  // heading - non linked horizontal cells height
hdingindent:1,   // heading - non linked horizontal cells text-indent represents ex units (@8 pixels decimals allowed)
linkheight:25,   // linked horizontal cells height
linktopad:3,     // linked horizontal cells top padding
borderwidth:1,   // inner border-width used for this menu
/////////////////////////// quote these properties: /////////////////////
bordercolor:'#000000', // inner border color
borderstyle:'solid',    // inner border style (solid, dashed, inset, etc.)
outbrdwidth:'0ex 0ex 0ex 0ex', // outer border-width used for this menu (top right bottom left)
outbrdcolor:'lightblue',  // outer border color
outbrdstyle:'solid',     // outer border style (solid, dashed, inset, etc.)
barcolor:'white',        // bar (the vertical cell) text color
barbgcolor:'#4d6814',   // bar (the vertical cell) background color
barfontweight:'bold',    // bar (the vertical cell) font weight
baralign:'center',       // bar (the vertical cell) right left or center text alignment
menufont:'verdana',      // menu font
fontsize:'90%',          // express as percentage with the % sign
hdingcolor:'white',      // heading - non linked horizontal cells text color
hdingbgcolor:'#4d6814',  // heading - non linked horizontal cells background color
hdingfontweight:'bold',  // heading - non linked horizontal cells font weight
hdingvalign:'middle',    // heading - non linked horizontal cells vertical align (top, middle or center)
hdingtxtalign:'left',    // heading - non linked horizontal cells right left or center text alignment
linktxtalign:'center',     // linked horizontal cells right left or center text alignment
linktarget:'',           // default link target, leave blank for same window (other choices: _new, _top, or a window or frame name)
kviewtype:'fixed',       // Type of keepinview - 'fixed' utilizes fixed positioning where available, 'absolute' fluidly follows page scroll
menupos:'top',         // set side that menu slides in from (right or left or top)
bartext:'MY OTHER MENU',       // bar text (the vertical cell) use text or img tag
///////////////////////////
menuItems:[
//[name, link, target, colspan, endrow?] - leave 'link' and 'target' blank to make a header
["Other Sites"], //create header
["World CFM", "http://www.worldcfm.com/", "_new"],
["The Door", "http://www.thedoorpeoria.com/", "_new"],
["The Door", "http://www.thedoorcfc.com/","_new"],
["The Door", "http://www.thedoortempe.com/", "_new"],


["Search", "", "", 2, "no"], //create two column header w/ 2 and 1 column members, requires d_colspan:3
["Search", "", "", 1],
["Google", "http://www.google.com/", "_new", 1, "no"], //create three column row, requires d_colspan:3
["Yahoo", "http://www.yahoo.com/", "_new", 1, "no"],
["MSN", "http://www.msn.com/", "_new", 1],

["Others", "", ""], //create header
["PHCFM on Ning", "http://www.pottershouse-cfm.ning.com", "_new"],
["Christian Movies", "http://www.christian-movies.com", "_new"]  //no comma after last entry

]}; // REQUIRED!! do not edit or remove



////////////////////Stop Editing/////////////////

make_menus();