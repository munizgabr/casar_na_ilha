if( function_exists('acf_add_local_field_group') ):

acf_add_local_field_group(array(
	'key' => 'group_6483730e6c46e',
	'title' => 'Elementos',
	'fields' => array(
		array(
			'key' => 'field_6484862b945d6',
			'label' => 'Elements',
			'name' => 'elements',
			'type' => 'flexible_content',
			'instructions' => '',
			'required' => 0,
			'conditional_logic' => 0,
			'wrapper' => array(
				'width' => '',
				'class' => '',
				'id' => '',
			),
			'layouts' => array(
				'layout_6484863ea6a0d' => array(
					'key' => 'layout_6484863ea6a0d',
					'name' => 'main-slider',
					'label' => 'Slider principal',
					'display' => 'block',
					'sub_fields' => array(
					),
					'min' => '',
					'max' => '',
				),
				'layout_6484b654eb79a' => array(
					'key' => 'layout_6484b654eb79a',
					'name' => 'highlights',
					'label' => 'Fornecedor destaque',
					'display' => 'block',
					'sub_fields' => array(
					),
					'min' => '',
					'max' => '',
				),
				'layout_649ed02d7f013' => array(
					'key' => 'layout_649ed02d7f013',
					'name' => 'categories',
					'label' => 'Categorias',
					'display' => 'block',
					'sub_fields' => array(
					),
					'min' => '',
					'max' => '',
				),
				'layout_649ed03ee69be' => array(
					'key' => 'layout_649ed03ee69be',
					'name' => 'blog-posts',
					'label' => 'Posts recentes',
					'display' => 'block',
					'sub_fields' => array(
					),
					'min' => '',
					'max' => '',
				),
			),
			'button_label' => 'Adicionar Linha',
			'min' => '',
			'max' => '',
		),
	),
	'location' => array(
		array(
			array(
				'param' => 'page_template',
				'operator' => '==',
				'value' => 'template-elements.php',
			),
		),
	),
	'menu_order' => 0,
	'position' => 'acf_after_title',
	'style' => 'default',
	'label_placement' => 'top',
	'instruction_placement' => 'label',
	'hide_on_screen' => '',
	'active' => true,
	'description' => '',
));

endif;