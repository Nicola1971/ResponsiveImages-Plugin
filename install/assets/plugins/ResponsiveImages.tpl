//<?php
/**
 * ResponsiveImages
 *
 * Responsive Images plugin
 *
 * @author    Nicola Lambathakis
 * @category    plugin
 * @version    1.1 RC
 * @license	 http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnLoadWebDocument
 * @internal    @installset base
 * @internal    @modx_category Images
 * @internal    @properties  &ImagesFolder= Images Folder:;string;assets/images/ &ResponsiveClass= Responsive Class:;string;img-responsive
 */

/*
###ResponsiveImages Plugin for MODX Evolution###
Written By Nicola Lambathakis: http://www.tattoocms.it
Version 1.1 RC
Events: OnLoadWebDocument

 */

/**
&ImagesFolder= Images Folder:;string;assets/images/ &ResponsiveClass= Responsive Class:;string;img-responsive
*/


$e= & $modx->Event;
switch ($e->name) {

case "OnLoadWebDocument" :

		// assets images (content)
	$modx->documentObject['content'] = str_replace(' src="'.$ImagesFolder.'',' class="'.$ResponsiveClass.'" src="'.$ImagesFolder.'',$modx->documentObject['content']);
		// lazy load images (content)
	$modx->documentObject['content'] = str_replace(' data-src="'.$ImagesFolder.'',' class="'.$ResponsiveClass.'" data-src="'.$ImagesFolder.'',$modx->documentObject['content']);
		break;

       return; // stop.
}