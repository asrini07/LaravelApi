<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mmahasiswa extends Model
{
    //
    protected $table='mmahasiswas';
    protected $primaryKey='nim';
    protected $fillable = [
        'nim','nama', 'jk', 'email', 'alamat', 'nohp'
    ];



}
