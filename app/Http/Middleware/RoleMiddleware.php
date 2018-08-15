<?php

namespace App\Http\Middleware;

use Closure;

class RoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, ...$roleName)
    {
        # jika ngga punya access
        if(! $request->user()->hasRole($roleName) )
        {
            return response()->json([
                "status" => "false",
                "message" => "sorry you cannot access this endpoint"
            ]);
        }
        return $next($request);        
    }
}
