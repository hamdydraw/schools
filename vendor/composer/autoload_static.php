<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit9669ee4659ae2e336e3b503196a95338
{
    public static $prefixesPsr0 = array (
        'J' => 
        array (
            'JasperPHP' => 
            array (
                0 => __DIR__ . '/..' . '/cossou/jasperphp/src',
            ),
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixesPsr0 = ComposerStaticInit9669ee4659ae2e336e3b503196a95338::$prefixesPsr0;

        }, null, ClassLoader::class);
    }
}
