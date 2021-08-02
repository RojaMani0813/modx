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
 * Forgot Password lexicon for Login
 *
 * @package login
 * @subpackage lexicon
 */
$_lang['login.email'] = 'Email';
$_lang['login.forgot_password'] = 'Esqueci-me da palavra-passe';
$_lang['login.forgot_password_email_subject'] = 'Email de Recuperação de Palavra-passe';
$_lang['login.forgot_password_email_text'] = '<p>Olá [[+username]],</p>
<p>para ativar a sua nova palavra-passe, por favor clique no seguinte endereço:</p>
<p><a href="[[+confirmUrl]]">[[+confirmUrl]]</a></p>
<p>Se a operação for bem sucedida, poderá utilizar a seguinte palavra-passe para iniciar a sessão:</p>
<p><strong>Palavra-passe:</strong> [[+password]]</p>
<p>Se não solicitou esta mensagem, por favor, ignore-a.</p>
<p>Obrigado,<br />
<em>A Administração do site [[++site_name]]</em></p>';
$_lang['login.or_forgot_username'] = 'Ou, esqueceu-se do seu nome de utilizador?';
$_lang['login.reset_password'] = 'Redefinir Palavra-passe';
$_lang['login.username'] = 'Nome de Utilizador';
$_lang['login.user_err_nf_email'] = 'Se o nome de utilizador ou o e-mail existir, receberá um email brevemente.';
$_lang['login.user_err_nf_username'] = 'Se o nome de utilizador ou o e-mail existir, receberá um email brevemente.';
