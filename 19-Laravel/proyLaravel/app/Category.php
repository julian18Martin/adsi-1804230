<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = [
        'name',
        'photo',
        'description',
    ];
    public function article(){
        return $this->hasOne('App\Article');
    }
}
