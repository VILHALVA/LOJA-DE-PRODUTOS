<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckEmail
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next) {
        if (!auth()->check()) {
            return redirect(route('login.form'));
        }

        $email = auth()->user()->email;
        $data = explode('@', $email);
        $servidorEmail = $data[1];

        if ($servidorEmail != 'gmail.com') {
            return redirect(route('login.form'));

        }
        return $next($request);
    }
}
