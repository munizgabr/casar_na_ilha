<form class="form search-form" role="search" method="get" action="<?php echo home_url('/'); ?>">
    <div class="search">
        <input type="search" class="search__input search-field wp-block-search__input" placeholder="<?php echo esc_attr_x('Busque aqui...', 'placeholder') ?>" value="<?php echo get_search_query() ?>" name="s" title="<?php echo esc_attr_x('Search for:', 'label') ?>" />

        <!-- Adicionando campos ocultos para tipo de fornecedor e nome da empresa -->
        <input type="hidden" name="post_type" value="fornecedor" />
        <input type="hidden" name="tipo" value="<?php echo get_query_var('tipo'); ?>" />
        <input type="hidden" name="empresa" value="" /> <!-- Deixe o valor vazio por enquanto -->

        <button class="search__button cssbuttons-io-button search-submit" type="submit">
            <svg class="search__icon" aria-hidden="true" viewBox="0 0 24 24">
                <g>
                    <path d="M21.53 20.47l-3.66-3.66C19.195 15.24 20 13.214 20 11c0-4.97-4.03-9-9-9s-9 4.03-9 9 4.03 9 9 9c2.215 0 4.24-.804 5.808-2.13l3.66 3.66c.147.146.34.22.53.22s.385-.073.53-.22c.295-.293.295-.767.002-1.06zM3.5 11c0-4.135 3.365-7.5 7.5-7.5s7.5 3.365 7.5 7.5-3.365 7.5-7.5 7.5-7.5-3.365-7.5-7.5z"></path>
                </g>
            </svg>
        </button>
    </div>
</form>
