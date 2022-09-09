<?php

$awsAccessKey = getenv('AWS_ACCESS_KEY_ID');
$awsSecretAccessKey = getenv('AWS_SECRET_ACCESS_KEY');

define('FS_METHOD', 'direct');
define('AS3CF_SETTINGS', serialize(['provider' => 'aws', 'access-key-id' => $awsAccessKey, 'secret-access-key' => $awsSecretAccessKey]));
