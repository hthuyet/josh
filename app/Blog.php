<?php

namespace App;

use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentTaggable\Taggable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Blog extends Model {

    use SoftDeletes;

use Taggable;

use Sluggable;

    protected $dates = ['deleted_at'];
    protected $sluggable = [
        'build_from' => 'title',
        'save_to' => 'slug',
    ];
    protected $table = 'blogs';
    protected $guarded = ['id'];

    public function comments() {
        return $this->hasMany('App\BlogComment');
    }

    public function category() {
        return $this->belongsTo('App\BlogCategory');
    }

    public function author() {
        return $this->belongsTo('App\User', 'user_id');
    }

    public function getBlogcategoryAttribute() {
        return $this->category->lists('id');
    }

    public function sluggable() {
        return [
            'slug' => [
                'source' => 'title',
                'separator' => '-',
                'includeTrashed' => true,
            ]
        ];
    }

}
