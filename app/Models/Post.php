<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Post extends Model
{
    use HasFactory;

    //not using updated_at
    const UPDATED_AT = null;

    protected $fillable = ['name', 'email', 'phone_number', 'region_id', 'message'];


    //define relation
    public function region()
    {
        return $this->hasOne('App\Models\Region');
    }


    // get date in proper format for users
    public function getHumanDateAttribute()
    {
        return \Carbon\Carbon::parse($this->created_at)->format('d.m.Y H:i');
    }


    // get datetime
    public function getDatetimeAttribute()
    {
        return \Carbon\Carbon::parse($this->created_at)->format('Y-m-d');
    }
}
