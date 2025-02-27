<?php

namespace Srapid\RealEstate\Forms;

use Srapid\Base\Forms\FormAbstract;
use Srapid\RealEstate\Models\Crm;
use Srapid\RealEstate\Http\Requests\CrmRequest;

class CrmForm extends FormAbstract
{
    /**
     * @return mixed|void
     */
    public function buildForm()
{
    $this
        ->setupModel(new Crm)
        ->setValidatorClass(CrmRequest::class)
        ->withCustomFields()
        ->add('name', 'text', [
            'label'      => trans('core/base::forms.name'),
            'label_attr' => ['class' => 'control-label required'],
            'attr'       => [
                'placeholder'  => trans('core/base::forms.name_placeholder'),
                'data-counter' => 120,
            ],
            'wrapper'    => [
                'class' => 'form-group',
            ],
            'order'      => 1,
        ])
        ->add('email', 'text', [
            'label'      => trans('plugins/real-estate::crm.form.email'),
            'label_attr' => ['class' => 'control-label'], // Removida a classe 'required'
            'attr'       => [
                'placeholder'  => trans('plugins/real-estate::crm.form.email_placeholder'),
                'data-counter' => 60,
            ],
            'wrapper'    => [
                'class' => 'form-group',
            ],
            'order'      => 2,
        ])
        ->add('phone', 'text', [
            'label'      => trans('plugins/real-estate::crm.form.phone'),
            'label_attr' => ['class' => 'control-label'],
            'attr'       => [
                'placeholder'  => trans('plugins/real-estate::crm.form.phone_placeholder'),
                'data-counter' => 15,
            ],
            'wrapper'    => [
                'class' => 'form-group',
            ],
            'order'      => 3,
        ])
        // Adicionando o campo de categoria do lead
        ->add('category', 'select', [
            'label'      => 'Categoria do Lead',
            'label_attr' => ['class' => 'control-label'],
            'choices'    => [
                'casa'       => 'Casa',
                'apartamento' => 'Apartamento',
                'chacara'    => 'Chácara',
                'aluguel'    => 'Aluguel',
                'terreno'    => 'Terreno',
                'lote'       => 'Lote',
                'temporada'  => 'Temporada',
                'outros'     => 'Outros'
            ],
            'wrapper'    => [
                'class' => 'form-group',
            ],
            'order'      => 4,
        ])
        // Adicionando o campo de cor do lead
        ->add('lead_color', 'select', [
            'label'      => 'Cor do Lead',
            'label_attr' => ['class' => 'control-label'],
            'choices'    => [
                'red'    => 'Lead Quente (Vermelho)',
                'blue'   => 'Lead Frio (Azul)',
                'gray'   => 'Venda Perdida (Cinza)'
            ],
            'wrapper'    => [
                'class' => 'form-group',
            ],
            'order'      => 5,
        ])
        ->add('content', 'textarea', [
            'label'      => trans('plugins/real-estate::crm.form.content'),
            'label_attr' => ['class' => 'control-label'], // Removida a classe 'required'
            'attr'       => [
                'rows'         => 5,
                'placeholder'  => trans('plugins/real-estate::crm.form.content_placeholder'),
                'data-counter' => 400,
            ],
            'wrapper'    => [
                'class' => 'form-group',
            ],
            'order'      => 6,
        ])
      ->add('property_value', 'number', [
    'label'      => trans('plugins/real-estate::crm.form.property_value'),
    'label_attr' => ['class' => 'control-label'],
    'attr'       => [
        'placeholder'  => trans('plugins/real-estate::crm.form.property_value_placeholder'),
        'class'        => 'form-control',
        'min'          => 0,
        'step'         => 'any',
    ],
    'wrapper'    => [
        'class' => 'form-group',
    ],
    'order'      => 7,
]);
    
    // Remova o setBreakFieldPoint para evitar problemas de layout
    // ->setBreakFieldPoint('content');
}
}