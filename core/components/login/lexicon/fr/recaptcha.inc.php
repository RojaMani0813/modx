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
 * reCaptcha lexicon for Login
 *
 * @package login
 * @subpackage lexicon
 */
$_lang['recaptcha.empty_answer'] = 'Réponse captcha incorrecte. Veuillez vérifier votre réponse et essayer à nouveau.';
$_lang['recaptcha.incorrect'] = 'Le reCAPTCHA n\'a pas été entré correctement. veuillez réessayer. [[+error]]';
$_lang['recaptcha.mailhide_no_mcrypt'] = 'Pour utiliser reCAPTCHA Mailhide, vous avez besoin du module PHP mcrypt.';
$_lang['recaptcha.mailhide_no_api_key'] = 'Pour utiliser reCAPTCHA Mailhide, vous devez vous enregistrer sur <a href="http://mailhide.recaptcha.net/apikey">http://mailhide.recaptcha.net/apikey</a> pour obtenir une clé publique et une privée';
$_lang['recaptcha.no_api_key'] = 'Pour utiliser reCAPTCHA vous devez utiliser une clé d\'API fournie sur <a href="http://recaptcha.net/api/getkey">http://recaptcha.net/api/getkey</a>';
$_lang['recaptcha.no_remote_ip'] = 'Pour des raisons de sécurité, vous devez « passer » l\'adresse distante à reCAPTCHA';

