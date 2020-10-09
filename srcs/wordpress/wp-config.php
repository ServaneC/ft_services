<?php

define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'mysql' );
define( 'DB_PASSWORD', 'pass' );
define( 'DB_HOST', 'mysql' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

define('AUTH_KEY',         'QWBVMFa&K~K$:m<4=sZ^/dYA:F*4V1CZYi|O-2!M9O:V{!W3Jli:|L$ 2#!Gtha^');
define('SECURE_AUTH_KEY',  '!-+Na*#x0KYIK;%E!ST>jsUy&S|E1w6G=-jzN/+N>+HW>;7GO^g5 .0?wI+Pr,Ma');
define('LOGGED_IN_KEY',    '05N7DkAaukRogHf%0?[zB2b|uU#CF:v&HJ6J>t-Fc|%u#5~hB[Hj}i^Hde1 nf]0');
define('NONCE_KEY',        'E=}Tb[FFqj_7xvbppE3m-K.yjQK`RD;wsLfOyppu.LARs-$v]BS<J:T0O|2h|HHT');
define('AUTH_SALT',        ',+}.B2PWB$t@mqwnZpf8qjSQCqaNxN=n*NA7Xtz2S^h;qtMv3aQftUj*<7n8BF`0');
define('SECURE_AUTH_SALT', ']SFx1%=Fygq516/)_wd1h(^|FaG0hRRF};IHc1:9?|,1e ,aA<Mmk^Qr&56K -)S');
define('LOGGED_IN_SALT',   'G@y/2?aG.N)0SDM2T%G/)HQMvcUp[3P>Z)Vw8P2Uu1k^5v:N[JzVYpz`/Qvx53S}');
define('NONCE_SALT',       '@g8^og)FGS;[J=T-+.]~FjXAf8{7ky>R21OZ1]!XhH+>JwwLTM8G-,<4H@$J;.s2');

$table_prefix = 'wp_';

define( 'WP_DEBUG', true );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}
require_once ABSPATH . 'wp-settings.php';