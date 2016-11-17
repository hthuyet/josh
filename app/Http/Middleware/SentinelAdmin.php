<?php

namespace App\Http\Middleware;

use Closure;
use Sentinel;
use Redirect;
use Session;

class SentinelAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $method = $request->method();
        
        $route = $request->route();
        if(!Sentinel::check()){
            if($method == "GET" || $method == "get"){
                Session::put('route', $route->getName());
                Session::put('parameters', $route->parameters());
            }
            return Redirect::to('admin/signin')->with('error', 'You must be logged in!');
        }elseif(!Sentinel::inRole('admin'))
            return Redirect::to('my-account');

        return $next($request);
    }
}
