<?php
// Widget para exibir categorias de fornecedores

class Widget_Categorias_Fornecedor extends WP_Widget {

    function __construct() {
        parent::__construct(
            'widget_categorias_fornecedor',
            __('Categorias de Fornecedores', 'text_domain'),
            array( 'description' => __( 'Exibe as categorias de fornecedores', 'text_domain' ), )
        );
    }

    public function widget( $args, $instance ) {
        echo $args['before_widget'];

        if ( ! empty( $instance['title'] ) ) {
            echo $args['before_title'] . apply_filters( 'widget_title', $instance['title'] ) . $args['after_title'];
        }

        // Exibir a lista de categorias de fornecedores
        $taxonomy = 'tipo'; // Substitua 'tipo' pelo nome da sua taxonomia personalizada
        $terms = get_terms( array(
            'taxonomy' => $taxonomy,
            'hide_empty' => true,
        ) );

        if ( ! empty( $terms ) && ! is_wp_error( $terms ) ) {
            echo '<ul>';
            foreach ( $terms as $term ) {
                echo '<li><a href="' . esc_url( get_term_link( $term ) ) . '">' . $term->name . '</a></li>';
            }
            echo '</ul>';
        }

        echo $args['after_widget'];
    }

    public function form( $instance ) {
        $title = ! empty( $instance['title'] ) ? $instance['title'] : '';
        ?>
        <p>
            <label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Título:' ); ?></label>
            <input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>">
        </p>
        <?php
    }

    public function update( $new_instance, $old_instance ) {
        $instance = array();
        $instance['title'] = ( ! empty( $new_instance['title'] ) ) ? sanitize_text_field( $new_instance['title'] ) : '';

        return $instance;
    }
}

// Registrar o widget
function register_widget_categorias_fornecedor() {
    register_widget( 'Widget_Categorias_Fornecedor' );
}
add_action( 'widgets_init', 'register_widget_categorias_fornecedor' );
