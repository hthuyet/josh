<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Booktest extends Model  {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'booktests';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['title', 'author', 'description'];

}