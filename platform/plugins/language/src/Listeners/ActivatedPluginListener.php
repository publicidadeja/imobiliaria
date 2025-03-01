<?php

namespace Srapid\Language\Listeners;

use Srapid\Language\Plugin;
use Exception;

class ActivatedPluginListener
{

    /**
     * Handle the event.
     *
     * @return void
     */
    public function handle()
    {
        try {
            Plugin::activated();
        } catch (Exception $exception) {
            info($exception->getMessage());
        }
    }
}
