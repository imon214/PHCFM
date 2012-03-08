<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<?php include "fav_icon.php"; ?>
		<title>PHCFM Flash Music Player</title>
	</head>
		<body>

			<!--
			INSTRUCTIONS
			* Change autoPlay to "yes" if you want the music track to start automatically once loaded

			-->

		<!-- Begin Copy/Paste -->

		<script type="text/javascript" src="swfobject.js"></script>
				
			<div id="flashPlayer">
			  This text will be replaced by the flash music player.
			</div>

		<script type="text/javascript">
		   var so = new SWFObject("playerMultiple.swf", "mymovie", "192", "95", "7", "#FFFFFF");
			so.addVariable("overColor","#660000")

			so.addVariable("autoPlay","no")
			so.addVariable("playlistPath","playlist.xml")
			so.write("flashPlayer");
		</script>

		<!-- End Copy/Paste -->

		</body>
</html>