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
            ])
            ->add('email', 'text', [
                'label'      => trans('plugins/real-estate::crm.form.email'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('plugins/real-estate::crm.form.email_placeholder'),
                    'data-counter' => 60,
                ],
            ])
            ->add('phone', 'text', [
                'label'      => trans('plugins/real-estate::crm.form.phone'),
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'placeholder'  => trans('plugins/real-estate::crm.form.phone_placeholder'),
                    'data-counter' => 15,
                ],
            ])
            ->add('content', 'textarea', [
                'label'      => trans('plugins/real-estate::crm.form.content'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'rows'         => 4,
                    'placeholder'  => trans('plugins/real-estate::crm.form.content_placeholder'),
                    'data-counter' => 400,
                ],
            ])
            ->setBreakFieldPoint('email');
    }
}