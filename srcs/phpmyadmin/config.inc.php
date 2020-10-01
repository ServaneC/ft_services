<?php

declare(strict_types=1);

/**                                                                                                                              
 * This is needed for cookie based authentication to encrypt password in                                                         
 * cookie. Needs to be 32 chars long.                                                                                            
 */
$cfg['blowfish_secret'] = 'hvgHCGFDWFGVBDHKDHBNBDjdje5)@jhd';

/* Servers configuration */
// $i = 1;
$i = 0;
$i++;
/* Authentication type */
$cfg['Servers'][$i]['auth_type'] = 'cookie';
/* Server parameters */
$cfg['Servers'][$i]['host'] = 'mysql';
$cfg['Servers'][$i]['port'] = 3306;
$cfg['Servers'][$i]['connect_type'] = 'tcp';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = true;
$cfg['Servers'][$i]['user'] = 'mysql';
$cfg['Servers'][$i]['password'] = 'pass';

/* Directories for saving/loading files from server */
$cfg['UploadDir'] = '';
// $cfg['PmaAbsoluteUri'] = '192.168.99.101:5000';
$cfg['SaveDir'] = '';

$cfg['TempDir'] = 'tmp';

// <?php
// declare(strict_types=1);

// $cfg['blowfish_secret'] = 'STRINGOFTHIRTYTWORANDOMCHARACTER'; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */
// $i = 0;
// $i++;
// $cfg['Servers'][$i]['auth_type'] = 'cookie';
// $cfg['Servers'][$i]['host'] = 'mysql';
// $cfg['Servers'][$i]['port'] = 3306;
// $cfg['Servers'][$i]['connect_type'] = 'tcp';
// $cfg['Servers'][$i]['compress'] = false;
// $cfg['Servers'][$i]['AllowNoPassword'] = true;
// $cfg['Servers'][$i]['extension'] = 'mysqli';