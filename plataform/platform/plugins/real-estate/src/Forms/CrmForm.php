<?php

namespace Botble\RealEstate\Forms;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FormAbstract;
use Botble\RealEstate\Models\Consult;

class CrmForm extends FormAbstract
{
    protected $template = 'plugins/real-estate::account.forms.base';

    public function buildForm(): void
    {
        $this
            ->setupModel(new Consult)
            ->setValidatorClass(\Botble\RealEstate\Http\Requests\CrmRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label'      => trans('plugins/real-estate::consult.form.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('plugins/real-estate::consult.form.name'),
                    'data-counter' => 120,
                ],
            ])
            ->add('email', 'text', [
                'label'      => trans('plugins/real-estate::consult.form.email'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('plugins/real-estate::consult.form.email'),
                    'data-counter' => 120,
                ],
            ])
            ->add('phone', 'text', [
                'label'      => trans('plugins/real-estate::consult.form.phone'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('plugins/real-estate::consult.form.phone'),
                    'data-counter' => 20,
                ],
            ])
            ->add('subject', 'text', [
                'label'      => trans('plugins/real-estate::consult.form.subject'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('plugins/real-estate::consult.form.subject'),
                    'data-counter' => 120,
                ],
            ])
            ->add('content', 'textarea', [
                'label'      => trans('plugins/real-estate::consult.form.content'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'rows'         => 4,
                    'placeholder'  => trans('plugins/real-estate::consult.form.content'),
                    'data-counter' => 500,
                ],
            ])
            ->add('status', 'customSelect', [
                'label'      => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => BaseStatusEnum::labels(),
            ])
            ->setBreakFieldPoint('status');
    }
}