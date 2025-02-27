<?php

return [
    // Informações básicas do módulo
    'name'                => 'CRM',
    'create'              => 'Adicionar Lead',
    'edit'                => 'Editar Lead',
    
    // Campos do formulário
    'form'                => [
        'name'                     => 'Nome',
        'email'                    => 'Email',
        'phone'                    => 'Telefone',
        'subject'                  => 'Assunto',
        'content'                  => 'Conteúdo',
        'property'                 => 'Imóvel relacionado',
        'select_property'          => 'Selecione um imóvel',
        'phone_placeholder'        => 'Digite o telefone',
        'email_placeholder'        => 'Digite o email',
        'content_placeholder'      => 'Digite o conteúdo',
        'status'                   => 'Status',
    ],
    
    // Traduções específicas para a tabela CRM
    'phone'               => 'Telefone',
    'email'               => 'Email',
    'content'             => 'Conteúdo',
    
    // Mensagens
    'messages'            => [
        'request'              => [
            'name_required'        => 'Nome é obrigatório',
            'email_required'       => 'Email é obrigatório',
            'email_valid'          => 'Email inválido',
            'phone_required'       => 'Telefone é obrigatório',
            'content_required'     => 'Conteúdo é obrigatório',
        ],
        'create_success'       => 'Lead criado com sucesso',
        'update_success'       => 'Lead atualizado com sucesso',
        'delete_success'       => 'Lead excluído com sucesso',
    ],
    
    // Status possíveis
    'statuses'            => [
        'read'                 => 'Lido',
        'unread'               => 'Não lido',
        'pending'              => 'Pendente',
        'processing'           => 'Em processamento',
        'completed'            => 'Concluído',
    ],
    
    // Outras traduções que podem ser necessárias
    'lead_information'    => 'Informações do Lead',
    'last_updated'        => 'Última atualização',
    'created_at'          => 'Criado em',
    'updated_at'          => 'Atualizado em',
    'no_lead'             => 'Nenhum lead encontrado',
    'lead_details'        => 'Detalhes do Lead',
    'mark_as_read'        => 'Marcar como lido',
    'mark_as_unread'      => 'Marcar como não lido',
    'assign_to'           => 'Atribuir para',
    'notes'               => 'Notas',
    'add_note'            => 'Adicionar nota',
];