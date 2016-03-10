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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'themorningkh.com');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'f VoK70lu3|~[RF!XfVn-|$GRAz8LG7e(-Nyf5NDFL#u*XV$Pw_Ot8F`iAPc:(qJ');
define('SECURE_AUTH_KEY',  'K VDd^-SM,+Kf^(U]/z%|lm5C1$(J`?}NE<cu?fbG@|M<BdNFB<W^M*%g3}dU99_');
define('LOGGED_IN_KEY',    'N1+,5{@Dn(J=cFUqpL8}vrMQd@ i5R.rQFShZHAVLdJRU/ )c_mtt(i$KT#~B=HE');
define('NONCE_KEY',        ':fyxx;/Gl^Y3`.ovcXuFUl%W>)o58>f+=[1DluBOPht2uv]7P91SZ;P!LEulD>/}');
define('AUTH_SALT',        'Z8sqMWoqj9b9a&h;Wv)ZoKHsf[Tb(|qfbO*G8FB|i(%8Ei<CrXE[s$36mZWL=9iV');
define('SECURE_AUTH_SALT', '0]63!s5s1-0*iL-P{UPiG-eJK_XveKibzRUCm-nxs3^!MQUF d7~j7!x-4olBkRW');
define('LOGGED_IN_SALT',   'T<fo}{(**OdWX6.}`4Zk(<2cF$Q,}r;r*9huyDOyOhN*UNga2DB|J^3W%GF/@Qe$');
define('NONCE_SALT',       '!{c@1_!s.dQv?<DL[)x4L{i)c8>EXPjz # VEwUM<f3 +j~s&;4OcSDL]3x?2*<p');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'tmkh_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
