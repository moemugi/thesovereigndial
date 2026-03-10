<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Request;

class AppServiceProvider extends ServiceProvider
{
    protected string $server;

    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(Request $request): void
    {
        $this->server = $request->getSchemeAndHttpHost() . '/storage';
        Config::set(['app.server' => $this->server]);
    }
}