<?php
//Cette fonction est appell�e par l'API en cas d'erreur, vous pouvez l'impl�menter pour cr�er un journal d'erreur
function fianet_insert_log($message)
{
	echo $message . '<br />';
}

//Cette fonction est appel�e d�s qu'une flux xml est g�n�r�. Le premier param�tre est le flux lui-m�me, le second param�tre est la r�f�rence de la commande
function save_flux_xml($xml, $ref_id)
{
}

