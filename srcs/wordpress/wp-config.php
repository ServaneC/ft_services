<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'mysql' );

/** MySQL database username */
define( 'DB_USER', 'mysql' );

/** MySQL database password */
define( 'DB_PASSWORD', 'pass' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

 define('AUTH_KEY',         'QWBVMFa&K~K$:m<4=sZ^/dYA:F*4V1CZYi|O-2!M9O:V{!W3Jli:|L$ 2#!Gtha^');
define('SECURE_AUTH_KEY',  '!-+Na*#x0KYIK;%E!ST>jsUy&S|E1w6G=-jzN/+N>+HW>;7GO^g5 .0?wI+Pr,Ma');
define('LOGGED_IN_KEY',    '05N7DkAaukRogHf%0?[zB2b|uU#CF:v&HJ6J>t-Fc|%u#5~hB[Hj}i^Hde1 nf]0');
define('NONCE_KEY',        'E=}Tb[FFqj_7xvbppE3m-K.yjQK`RD;wsLfOyppu.LARs-$v]BS<J:T0O|2h|HHT');
define('AUTH_SALT',        ',+}.B2PWB$t@mqwnZpf8qjSQCqaNxN=n*NA7Xtz2S^h;qtMv3aQftUj*<7n8BF`0');
define('SECURE_AUTH_SALT', ']SFx1%=Fygq516/)_wd1h(^|FaG0hRRF};IHc1:9?|,1e ,aA<Mmk^Qr&56K -)S');
define('LOGGED_IN_SALT',   'G@y/2?aG.N)0SDM2T%G/)HQMvcUp[3P>Z)Vw8P2Uu1k^5v:N[JzVYpz`/Qvx53S}');
define('NONCE_SALT',       '@g8^og)FGS;[J=T-+.]~FjXAf8{7ky>R21OZ1]!XhH+>JwwLTM8G-,<4H@$J;.s2');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */

define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */

require_once ABSPATH . 'wp-settings.php';