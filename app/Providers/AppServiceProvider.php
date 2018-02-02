<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use View;
use App\Category;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
       // View::share('name','Robiul alam');
        View()->composer('frontEnd.layouts.headerTop',function($view){
           // View::share('name','Robiul alam');
            $allPublishedCategories = Category::where('publication_status', 1)->get();
            View::share('allPublishedCategories',$allPublishedCategories);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
