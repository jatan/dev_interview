<?php
$employees = array('Travis' => 29, 'John' => 30, 'Manny' => 24, 'Gabriel' => 20, 'Yogi' => 22);
ksort($employees);
foreach ($employees as $k => $v) {
    $data['name'] = $k;
    $data['age'] = $v;
    $output[] = $data;
}
    var_dump(json_encode($output));
