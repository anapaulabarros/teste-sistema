<?php // $Revision: 1.1.1.1 $
/* vim: set expandtab ts=4 sw=4 sts=4: */

/**
 * $Id: accessfile.php,v 1.1.1.1 2004/11/02 03:30:22 madbear Exp $
 * 
 * Copyright (c) 2003 by the NetOffice developers
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 */

$checkSession = true;
require_once('../includes/library.php');

$tmpquery = "WHERE fil.id = '$id'";
$fileDetail = new request();
$fileDetail->openFiles($tmpquery);

// serve the requested file
require_once('../includes/download.php');

?>
