<?php
namespace App\helpers;

use App\Models\System;

class Settings
{

    public $systemDefaults;

    public function __construct()
    {
        $system = System::find(1);
        $this->systemDefaults = json_decode($system->defaults);

    }

    public function getDateFormat()
    {
        return $this->systemDefaults->date_format;
    }
}
