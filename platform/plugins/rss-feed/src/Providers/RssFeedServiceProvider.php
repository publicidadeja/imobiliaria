<?php

namespace Srapid\RssFeed\Providers;

use Srapid\Base\Traits\LoadAndPublishDataTrait;
use Srapid\RssFeed\Facades\RssFeedFacade;
use Illuminate\Foundation\AliasLoader;
use Illuminate\Support\ServiceProvider;
use Route;
use RssFeed;

class RssFeedServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        AliasLoader::getInstance()->alias('RssFeed', RssFeedFacade::class);
    }

    public function boot()
    {
        $this->setNamespace('plugins/rss-feed')
            ->loadRoutes(['web'])
            ->loadAndPublishViews();

        if (is_plugin_active('blog') && Route::has('feeds.posts')) {
            RssFeed::addFeedLink(route('feeds.posts'), 'Posts feed');
        }
    }
}
