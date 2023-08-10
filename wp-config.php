<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do banco de dados
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do banco de dados - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'casar-na-ilha' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );
define('FS_METHOD','direct');
/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '_0eq;yV3J!/5fKEkn/n^:4bdN*F5>Ay_l3<)|cE:K[*FYEwFCK$&1;nBW1>h0DC&' );
define( 'SECURE_AUTH_KEY',  'xF`]IE0!xC&SNS`k-r)V0l>#TP-2)|!7}46%X98!9#%pXz{=4f)MuU&#i3*suRHm' );
define( 'LOGGED_IN_KEY',    'c8qkq;QMbM0Q}N2uo(!%76hoD_sebz7QOW7zjT!m%<dw-QkzxY#cAxQabwMZk``H' );
define( 'NONCE_KEY',        '8:AG)20,MI]j_Drzo:`4<%B=yHfLi}Y%3%Y[*9]]Pz;/2=-Ol6x/4]c7;f,AG0U5' );
define( 'AUTH_SALT',        'v34();z[<AgaT+fnV-]8n*MmBUF2Z%b;9?X1Y^Xm6jo47CYc>|(EOL6%;48oEM-F' );
define( 'SECURE_AUTH_SALT', ']l6GIAH^k>w;l,gb.4NJU.d*kg}[m3hN$OLL?Z2%?[Y#kcw|FgSc<Ot}5Iz!Ugyy' );
define( 'LOGGED_IN_SALT',   'q@+^yPrm^[|-WN=yt|2zje]5*AH<%*Y}}=8-E4z{D$6PZIDLp4DgGw*A6CXLaV([' );
define( 'NONCE_SALT',       'bN0BFR+#g6r0]0I$XsuD((nC8;Xx,d-nG7&f)`;BD`0cl]`sH9W%wy85~)pV1$fy' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Adicione valores personalizados entre esta linha até "Isto é tudo". */



/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';