<?php
$input = [
    'name' => ' Jatan Bhatt',
    'email' => 'jatan.bhatt@gmail.com',
    'twitter' => ''
];
function validate_data($data){
    $email = new Exception('Email is not valid');
    $name = new Exception('Name is not valid');
    if(empty($data['name']))
        throw ($name);
    if(sizeof(explode(' ', trim($data['name'])))!=2)
        throw ($name);
    if(empty($data['email']))
        throw ($email);
    if(!filter_var($data['email'], FILTER_VALIDATE_EMAIL))
        throw ($email);
}
try {
    validate_data($input);
}
catch(Exception $e) {
    echo 'Error: ' .$e->getMessage();
}
?>
