<?php
/**
 * Login
 *
 * Copyright 2010 by Jason Coward <jason@modxcms.com> and Shaun McCormick
 * <shaun@modxcms.com>
 *
 * Login is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation; either version 2 of the License, or (at your option) any
 * later version.
 *
 * Login is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Login; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package login
 */
/**
 * Properties lexicon for Login
 *
 * @package login
 * @subpackage lexicon
 */
/* ForgotPassword snippet */
$_lang['prop_forgotpassword.emailtpl_desc'] = 'Template (tpl) para o email de confirmação.';
$_lang['prop_forgotpassword.emailtpltype_desc'] = 'O tipo de tpl a ser fornecido para a propriedade emailTpl. A pré-definição é um Chunk.';
$_lang['prop_forgotpassword.senttpl_desc'] = 'O tpl da mensagem para mostrar quando um email foi enviado com sucesso.';
$_lang['prop_forgotpassword.senttpltype_desc'] = 'O tipo de tpl a ser fornecido para a propriedade sentTpl. A pré-definição é um Chunk.';
$_lang['prop_forgotpassword.tpl_desc'] = 'Tpl para o formulário de esquecimento de palavra-passe.';
$_lang['prop_forgotpassword.tpltype_desc'] = 'O tipo de tpl a ser fornecido para a propriedade tpl. A pré-definição é um Chunk.';
$_lang['prop_forgotpassword.errtpl_desc'] = 'O tpl para envolver a mensagem de erro.';
$_lang['prop_forgotpassword.errtpltype_desc'] = 'O tipo de tpl a usar para o errTpl.';
$_lang['prop_forgotpassword.emailsubject_desc'] = 'O assunto para o email da palavra-passe esquecida.';
$_lang['prop_forgotpassword.emailtplalt_desc'] = '(Opcional) Alternativa de texto plano para o tpl da mensagem de confirmação de e-mail.';
$_lang['prop_forgotpassword.resetresourceid_desc'] = 'Página (recurso) a redirecionar os utilizadores no email de confirmação, onde está a chamada para o snippet de ResetPassword.';

/* Login snippet */
$_lang['prop_login.actionkey_desc'] = 'A variável REQUEST que indica que ação deve ser tomada.';
$_lang['prop_login.loginkey_desc'] = 'A chave de ação do início de sessão.';
$_lang['prop_login.logoutkey_desc'] = 'A chave de ação do encerramento de sessão.';
$_lang['prop_login.loginviaemail_desc'] = 'Ativar início de sessão através do nome de utilizador ou endereço de email.';
$_lang['prop_login.tpltype_desc'] = 'O tipo de TPLs que são fornecidos para os formulários de início de sessão e de encerramento de sessão.';
$_lang['prop_login.logintpl_desc'] = 'TPL do formulário de início de sessão.';
$_lang['prop_login.logouttpl_desc'] = 'TPL do encerramento de sessão.';
$_lang['prop_login.prehooks_desc'] = 'Quais os scripts a executar, se existirem, antes de um utilizador estar autenticado ou a encerrar a sessão. Isto pode ser uma lista de hooks, separados por vírgulas. Se o primeiro falhar, os seguintes não serão executados. Um hook também pode ser um nome de um Snippet que executará o respetivo Snippet.';
$_lang['prop_login.posthooks_desc'] = 'Quais os scripts a executar, se existirem, após um utilizador estar autenticado ou a encerrar a sessão. Isto pode ser uma lista de hooks, separados por vírgulas. Se o primeiro falhar, os seguintes não serão executados. Um hook também pode ser um nome de um Snippet que executará o respetivo Snippet.';
$_lang['prop_login.errtpl_desc'] = 'O TPl de erro.';
$_lang['prop_login.errtpltype_desc'] = 'O TPl do tipo de erro.';
$_lang['prop_login.loginresourceid_desc'] = 'A página (recurso) a redirecionar os utilizadores num início de sessão bem sucedido. 0 redirecionará para si próprio.';
$_lang['prop_login.loginresourceparams_desc'] = 'Um objeto JSON de parâmetros para anexar ao URL de redirecionamento do início de sessão. Ex: {"test":123}';
$_lang['prop_login.logoutresourceid_desc'] = 'A página (recurso) a redirecionar os utilizadores num encerramento de sessão bem sucedido. 0 redirecionará para si próprio.';
$_lang['prop_login.logoutresourceparams_desc'] = 'Um objeto JSON de parâmetros para anexar ao URL de redirecionamento do encerramento de sessão. Ex: {"test":123}';
$_lang['prop_login.loginmsg_desc'] = 'Mensagem opcional para ação de início de sessão. Se estiver em branco, será utilizada a string de léxico para Login como pré-definição.';
$_lang['prop_login.logoutmsg_desc'] = 'Mensagem opcional para ação de encerramento de sessão. Se estiver em branco, será utilizada a string de léxico para Logout como pré-definição.';
$_lang['prop_login.redirecttoprior_desc'] = 'Se verdadeiro, redirecionará para a página de referência (HTTP_REFERER) no início de sessão bem sucedido.';
$_lang['prop_login.redirecttoonfailedauth_desc'] = 'Se definido um número diferente de 0, irá redirecionar o utilizador para esta página, se a sua tentativa de iniciar a sessão for mal sucedida.';
$_lang['prop_login.remembermekey_desc'] = 'Opcional. O nome do campo do botão "Lembrar-me" para preservar o estado de início de sessão. A pré-definição é `rememberme`.';
$_lang['prop_login.contexts_desc'] = '(Experimental) Uma lista separada por vírgulas com os contextos onde iniciar a sessão. A pré-definição será o contexto atual se não estiver definido explicitamente.';
$_lang['prop_login.toplaceholder_desc'] = 'Se definido, irá definir o output do snippet de login para um placeholder com este nome, em vez de entregar diretamente o conteúdo.';

/* Profile snippet */
$_lang['prop_profile.prefix_desc'] = 'Uma string de prefixo para todos os placeholders de campos que serão definidos por este Snippet.';
$_lang['prop_profile.user_desc'] = 'Opcional. Ou um ID de utilizador ou um nome de utilizador. Se definido, este utilizador será utilizado em vez do utilizador autenticado no momento.';
$_lang['prop_profile.useextended_desc'] = 'Se deseja ou não definir quaisquer campos adicionais no formulário dos Perfis estendidos. Isto pode ser útil para armazenar campos adicionais dos utilizadores.';

/* Register snippet */
$_lang['prop_register.submitvar_desc'] = 'A variável a verificar para carregar a funcionalidade Register. Se vazio ou definido como falso, a funcionalidade Register processará o formulário em todos os pedidos do POST.';
$_lang['prop_register.usergroups_desc'] = 'Opcional. Uma lista separada por vírgulas dos nomes de grupos de utilizadores, ou IDs a adicionar o utilizador recém-registado.';
$_lang['prop_register.usergroupsfield_desc'] = 'O nome do campo a ser usado para especificar o(s) Grupo(s) de Utilizador para adicionar automaticamente o novo utilizador. Usado apenas se este valor não estiver em branco.';
$_lang['prop_register.submittedresourceid_desc'] = 'Se definido, irá redirecionar para a página (Recurso) especificado após o utilizador enviar o formulário de registo.';
$_lang['prop_register.usernamefield_desc'] = 'O nome do campo a ser utilizado para o nome de utilizador do novo utilizador.';
$_lang['prop_register.passwordfield_desc'] = 'O nome do campo a ser utilizado para a palavra-passe do novo utilizador.';
$_lang['prop_register.emailfield_desc'] = 'O nome do campo a ser utilizado para o email do novo utilizador.';
$_lang['prop_register.successMsg_desc'] = 'Opcional. Se não redirecionar utilizando o parâmetro submittedResourceId, esta mensagem irá ser exibida.';
$_lang['prop_register.persistparams_desc'] = 'Opcional. Um objeto JSON de parâmetros para persistirem em todo o processo de registo. Útil ao utilizar um redirecionamento no ConfirmRegister para redirecionar para outra página (por exemplo, carrinhos de compras).';
$_lang['prop_register.prehooks_desc'] = 'Quais os scripts a executar, se existirem, antes do formulário passar a validação. Isto pode ser uma lista de hooks, separados por vírgulas. Se o primeiro falhar, os seguintes não serão executados. Um hook também pode ser um nome de um Snippet que executará o respetivo Snippet.';
$_lang['prop_register.posthooks_desc'] = 'Quais os scripts a executar, se existirem, após um utilizador estar registado. Isto pode ser uma lista de hooks, separados por vírgulas. Se o primeiro falhar, os seguintes não serão executados. Um hook também pode ser um nome de um Snippet que executará o respetivo Snippet.';
$_lang['prop_register.useextended_desc'] = 'Se deseja ou não definir quaisquer campos adicionais no formulário dos Perfis estendidos. Isto pode ser útil para armazenar campos adicionais dos utilizadores.';
$_lang['prop_register.excludeextended_desc'] = 'Uma lista separada por vírgulas de campos a excluir da configuração como campos estendidos.';
$_lang['prop_register.activation_desc'] = 'Se deseja ou não exigir ativação para um registo completo. Se verdadeiro, os utilizadores não serão marcados como ativos até que ativem a sua conta. Verdadeiro como pré-definição. Só funcionará se o formulário de registro incluir um campo de email.';
$_lang['prop_register.activationttl_desc'] = 'Número de minutos até que o email de ativação expira. A pré-definição é de 3 horas.';
$_lang['prop_register.activationresourceid_desc'] = 'O ID da página (Recurso) onde o snippet ConfirmRegister para a ativação está localizado.';
$_lang['prop_register.activationemail_desc'] = 'Se definido, enviará emails de ativação para este endereço em vez do endereço do utilizador recém-registado.';
$_lang['prop_register.activationemailsubject_desc'] = 'O assunto para o email de ativação.';
$_lang['prop_register.activationemailtpltype_desc'] = 'O tipo de TPLs que são fornecidos para o email de ativação.';
$_lang['prop_register.activationemailtpl_desc'] = 'O TPL do email de ativação.';
$_lang['prop_register.activationemailtplalt_desc'] = '(Opcional) Alternativa de texto plano para o tpl do e-mail de ativação.';
$_lang['prop_register.moderatedresourceid_desc'] = 'Se um pre-hook define o utilizador como moderado, então envia para este Recurso em vez do submittedResourceId. Deixe em branco para ignorar.';
$_lang['prop_register.placeholderprefix_desc'] = 'O prefixo a ser incluido em todos os placeholders definidos por este snippet.';
$_lang['prop_register.recaptchaHeight_desc'] = 'Se `recaptcha` for definido como um preHook, isto irá selecionar a altura para o widget reCaptcha.';
$_lang['prop_register.recaptchaTheme_desc'] = 'Se `recaptcha` for definido como um preHook, isto irá selecionar um tema para o widget reCaptcha.';
$_lang['prop_register.recaptchaWidth_desc'] = 'Se `recaptcha` for definido como um preHook, isto irá selecionar a largura para o widget reCaptcha.';
$_lang['prop_register.mathminrange_desc'] = 'Se `math` for definido como um preHook, o intervalo mínimo para cada número na equação.';
$_lang['prop_register.mathmaxrange_desc'] = 'Se `math` for definido como um preHook, o intervalo máximo para cada número na equação.';
$_lang['prop_register.mathfield_desc'] = 'Se `math` for definido como um preHook, o nome do campo de entrada para a resposta.';
$_lang['prop_register.mathop1field_desc'] = 'Se `math` for definido como um preHook, o nome do campo para o 1º número na equação.';
$_lang['prop_register.mathop2field_desc'] = 'Se `math` for definido como um preHook, o nome do campo para o 2º número na equação.';
$_lang['prop_register.mathoperatorfield_desc'] = 'Se `math` for definido como um preHook, o nome do campo para o operador na equação.';
$_lang['prop_register.validatepassword_desc'] = 'Se deseja ou não validar a palavra-passe enviada ao efetuar o registo. Recomendado deixar definido com "Sim", exceto se estiver a gerar a sua própria palavra-passe num hook.';
$_lang['prop_register.generatepassword_desc'] = 'Se definido como "Sim", o registo irá gerar uma palavra-passe aleatória para o utilizador, substituindo qualquer palavra-passe anterior. Útil para gerar palavras-passe automaticamente.';
$_lang['prop_register.trimpassword_desc'] = 'Se definido como Sim, o processo Register irá separar a palavra-passe submetida pelo espaço em branco.';
$_lang['prop_register.ensurePasswordStrength_desc'] = 'Se definido como "Sim", o registo garantirá que o utilizador introduza uma palavra-passe forte o suficiente. Palavras-passe fortes são palavras-passe que incluam várias palavras ou caracteres não-alfabéticos.';
$_lang['prop_register.passwordWordSeparator_desc'] = 'Se ensurePasswordStrength estiver definido como "Sim", este será o separador entre palavras ao determinar quantas palavras estão numa palavra-passe fornecida.';
$_lang['prop_register.minimumStrongPasswordWordCount_desc'] = 'Se ensurePasswordStrength estiver definida como "Sim", se uma palavra-passe fornecida tem muitas palavras, então será considerada uma palavra-passe forte.';
$_lang['prop_register.maximumPossibleStrongerPasswords_desc'] = 'Se ensurePasswordStrength estiver definido como "Sim", então este é o máximo de sugestões que o Register pode encontrar para considerar uma palavra-passe "forte". Tornar este número maior, torna a verificação mais suave; menor, torna-a mais difícil.';
$_lang['prop_register.ensurePasswordStrengthSuggestions_desc'] = 'Se ensurePasswordStrength estiver definida como "Sim", e se a palavra-passe falhar no teste de força, o Register irá fornecer tantas sugestões ao utilizador para a sua palavra-passe quantas as necessárias.';
$_lang['prop_register.allowedfields_desc'] = 'Se definido, irá limitar os campos que são permitidos a serem definidos no utilizador recém-criado para esta lista separada por vírgulas. Também restringe os campos estendidos.';
$_lang['prop_register.removeexpiredregistrations_desc'] = 'Se verdadeiro, irá remover utilizadores registados que expiraram, que não foram utilizados ou que nunca foram ativados. É recomendado deixar esta opção ativada para evitar spam.';
$_lang['prop_register.preservefieldsafterregister_desc'] = 'Se verdadeiro, os dados dos campos de registo serão guardados após o registo com sucesso. Para redefinir os dados dos campos, defina como "falso"';
$_lang['prop_register.redirectUnsetDefaultParam_desc'] = 'Se for verdadeiro, os parâmetros pré-definidos serão removidos dos URLs redirecionados.';
$_lang['opt_register.chunk'] = 'Pedaço (Chunk)';
$_lang['opt_register.file'] = 'Ficheiro';
$_lang['opt_register.inline'] = 'Embutido';
$_lang['opt_register.embedded'] = 'Embutido';
$_lang['opt_register.blackglass'] = 'Vidro Negro';
$_lang['opt_register.clean'] = 'Limpar';
$_lang['opt_register.red'] = 'Vermelho';
$_lang['opt_register.white'] = 'Branco';
$_lang['opt_register.asc'] = 'Ascendente';
$_lang['opt_register.desc'] = 'Descendente';

/* ConfirmRegister snippet */
$_lang['prop_confirmregister.redirectto_desc'] = 'Opcional. Após uma confirmação bem sucedida, redirecionar para esta página (Recurso).';
$_lang['prop_confirmregister.redirectparams_desc'] = 'Opcional. Um objeto JSON de parâmetros a serem passados ao redirecionar utilizando o redirectTo.';
$_lang['prop_confirmregister.redirectUnsetDefaultParam_desc'] = 'Se verdadeiro, os parâmetros pré-definidos serão removidos dos URLs redirecionados.';
$_lang['prop_confirmregister.authenticate_desc'] = 'Autenticar e logar o utilizador no contexto atual após confirmar o registo. O padrão é "verdadeiro".';
$_lang['prop_confirmregister.authenticatecontexts_desc'] = 'Opcional. Uma lista de contextos separados por vírgulas para autenticar. O padrão é o contexto atual.';
$_lang['prop_confirmregister.errorpage_desc'] = 'Opcional. Se definido, redirecionará os utilizadores para uma página de erro personalizada se eles tentarem aceder à página de confirmação com algum erro de validação.';
$_lang['prop_confirmregister.activepage_desc'] = 'Opcional. Se definido, redirecionará os utilizadores para uma página de erro de conta ativa se eles tentarem aceder à página de confirmação de registo com uma conta já ativada.';

/* ResetPassword snippet */
$_lang['prop_resetpassword.tpl_desc'] = 'O TPL da mensagem de reposição de palavra-passe.';
$_lang['prop_resetpassword.tpltype_desc'] = 'O tipo de tpl a ser fornecido. A pré-definição é um Chunk.';
$_lang['prop_resetpassword.loginresourceid_desc'] = 'A página (Recurso) para redirecionar os utilizadores numa confirmação bem sucedida.';

/* UpdateProfile snippet */
$_lang['prop_updateprofile.allowedextendedfields_desc'] = 'Opcional. Se definido, irá restringir os campos que são atualizados nos campos estendidos para os nomes dos campos nesta lista separada por vírgulas.';
$_lang['prop_updateprofile.allowedfields_desc'] = 'Opcional. Se definido, irá restringir os campos que são atualizados nos nomes de campos nesta lista separada por vírgulas.';
$_lang['prop_updateprofile.emailfield_desc'] = 'O nome do campo para o campo de email no formulário.';
$_lang['prop_updateprofile.excludeextended_desc'] = 'Uma lista separada por vírgulas de campos a excluir da configuração como campos estendidos.';
$_lang['prop_updateprofile.placeholderprefix_desc'] = 'O prefixo a ser incluido em todos os placeholders definidos por este snippet.';
$_lang['prop_updateprofile.posthooks_desc'] = 'Quais os scripts a executar, se existirem, após um utilizador estar registado. Isto pode ser uma lista de hooks, separados por vírgulas. Se o primeiro falhar, os seguintes não serão executados. Um hook também pode ser um nome de um Snippet que executará o respetivo Snippet.';
$_lang['prop_updateprofile.prehooks_desc'] = 'Quais os scripts a executar, se existirem, antes do formulário passar a validação. Isto pode ser uma lista de hooks, separados por vírgulas. Se o primeiro falhar, os seguintes não serão executados. Um hook também pode ser um nome de um Snippet que executará o respetivo Snippet.';
$_lang['prop_updateprofile.redirecttologin_desc'] = 'Se um utilizador não estiver autenticado e aceder esta página (Recurso), redireciona-o para a página (Recurso) "página não autorizada".';
$_lang['prop_updateprofile.reloadonsuccess_desc'] = 'Se verdadeiro, a página irá redirecionar para si própria com um parâmetro GET para evitar duplas submissões. Se falso, simplesmente irá definir um placeholder de sucesso.';
$_lang['prop_updateprofile.submitvar_desc'] = 'A variável a verificar para carregar a funcionalidade UpdateProfile. Se vazio ou definido como falso, a funcionalidade UpdateProfile processará o formulário em todos os pedidos do POST.';
$_lang['prop_updateprofile.syncusername_desc'] = 'Se definido para um nome de coluna no perfil, o UpdateProfile tentará sincronizar o nome de utilizador para este campo após um evento "guardar" bem sucedido.';
$_lang['prop_updateprofile.useextended_desc'] = 'Se deseja ou não definir quaisquer campos adicionais no formulário dos Perfis estendidos. Isto pode ser útil para armazenar campos adicionais dos utilizadores.';
$_lang['prop_updateprofile.user_desc'] = 'Opcional. Se especificado, carregará o utilizador com o ID especificado ou nome de utilizador em vez do utilizador ativo.';

/* ChangePassword snippet */
$_lang['prop_changepassword.submitvar_desc'] = 'A variável a verificar para carregar a funcionalidade ChangePassword. Se vazio ou definido como falso, a funcionalidade ChangePassword processará o formulário em todos os pedidos do POST.';
$_lang['prop_changepassword.fieldoldpassword_desc'] = 'O nome do campo para o campo da palavra-passe antiga.';
$_lang['prop_changepassword.fieldnewpassword_desc'] = 'O nome do campo para o campo da nova palavra-passe.';
$_lang['prop_changepassword.fieldconfirmnewpassword_desc'] = 'Opcional. Se definido, o nome do campo para a confirmação de palavra-passe, e será verificado contra o novo campo de palavra-passe durante o envio.';
$_lang['prop_changepassword.prehooks_desc'] = 'Quais os scripts a executar, se existirem, após o formulário passar a validação, mas antes de guardar os dados. Isto pode ser uma lista de hooks, separados por vírgulas. Se o primeiro falhar, os seguintes não serão executados. Um hook também pode ser um nome de um Snippet que executará o respetivo Snippet.';
$_lang['prop_changepassword.posthooks_desc'] = 'Quais os scripts a executar, se existirem, após um utilizador estar registado. Isto pode ser uma lista de hooks, separados por vírgulas. Se o primeiro falhar, os seguintes não serão executados. Um hook também pode ser um nome de um Snippet que executará o respetivo Snippet.';
$_lang['prop_changepassword.redirecttologin_desc'] = 'Se um utilizador não estiver autenticado e aceder esta página (Recurso), redireciona-o para a página (Recurso) "página não autorizada".';
$_lang['prop_changepassword.reloadonsuccess_desc'] = 'Se verdadeiro, a página irá redirecionar para si própria com um parâmetro GET para evitar duplas submissões. Se falso, simplesmente irá definir um placeholder de sucesso.';
$_lang['prop_changepassword.successmessage_desc'] = 'Se o reloadOnSuccess estiver definido como falso, irá mostrar esta mensagem no placeholder [prefix].successMessage';
$_lang['prop_changepassword.placeholderprefix_desc'] = 'O prefixo a ser utilizado em todos os placeholders definidos por este snippet.';

/* isLoggedIn snippet */
$_lang['prop_isloggedin.contexts_desc'] = 'Uma lista separada por vírgulas de contextos para verificar o estado de autenticação. Se não definido, o contexto atual será considerado como o pré-definido.';
$_lang['prop_isloggedin.redirectto_desc'] = 'O ID de uma página (Recurso) para redirecionar um utilizador não autenticado. A pré-definição será para a configuração unauthorized_page.';
$_lang['prop_isloggedin.redirectparams_desc'] = 'Se utilizar o redirectTo, um objeto JSON de parâmetros REQUEST para enviar com o redirecionamento.';

/* ActiveUsers snippet */
$_lang['prop_activeusers.tpl'] = 'O Chunk a utilizar para apresentar cada utilizador ativo.';
$_lang['prop_activeusers.tplType'] = 'O tipo de tpl a ser fornecido. A pré-definição é um Chunk.';
$_lang['prop_activeusers.sortBy'] = 'O campo para ordenar os utilizadores.';
$_lang['prop_activeusers.sortDir'] = 'A direção para ordenar os utilizadores.';
$_lang['prop_activeusers.limit'] = 'O número de utilizadores a limitar na apresentação.';
$_lang['prop_activeusers.offset'] = 'O índice inicial do número limitado de utilizadores a apresentar.';
$_lang['prop_activeusers.classKey'] = 'A chave de classe a utilizar ao processar os utilizadores. A pré-definição será o modUser. Pode definir este parâmetro para um nome de classe que estende o modUser, se desejar.';
$_lang['prop_activeusers.placeholderprefix_desc'] = 'O prefixo a ser incluido em todos os placeholders definidos por este snippet.';
$_lang['prop_activeusers.toplaceholder_desc'] = 'Se definido, irá definir o output do snippet para um placeholder com este nome, em vez de entregar diretamente o conteúdo.';
