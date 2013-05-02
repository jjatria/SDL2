package SDL2::Constants;
use warnings;
use base 'Exporter';
use Config;

our @EXPORT_OK   = ();

our %EXPORT_TAGS = (
    'SDL2/init' => [
        qw (
    SDL_INIT_TIMER           
    SDL_INIT_AUDIO           
    SDL_INIT_VIDEO           
    SDL_INIT_JOYSTICK        
    SDL_INIT_HAPTIC          
    SDL_INIT_GAMECONTROLLER  
    SDL_INIT_NOPARACHUTE  
    SDL_INIT_EVERYTHING
        )
    ],
    'SDL2/hint' => [
        qw (
        SDL_FRAMEBUFFER_ACCELERATION
        SDL_HINT_RENDER_DRIVER
        SDL_HINT_RENDER_OPENGL_SHADERS
        SDL_HINT_RENDER_SCALE_QUALITY
        SDL_HINT_RENDER_VSYNC
        SDL_HINT_VIDEO_X11_XVIDMODE
        SDL_HINT_VIDEO_X11_XINERAMA
        SDL_HINT_VIDEO_X11_XRANDR
        SDL_HINT_GRAB_KEYBOARD
        SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS
        SDL_HINT_IDLE_TIMER_DISABLED
        SDL_HINT_ORIENTATIONS
        SDL_GAMECONTROLLERCONFIG
        SDL_ALLOW_TOPMOST
        SDL_HINT_DEFAULT
        SDL_HINT_NORMAL
        SDL_HINT_OVERRIDE
        )
    ],
    'SDL2::Window/type' => [
        qw (
        SDL_WINDOW_FULLSCREEN 
        SDL_WINDOW_OPENGL 
        SDL_WINDOW_SHOWN 
        SDL_WINDOW_HIDDEN 
        SDL_WINDOW_BORDERLESS
        SDL_WINDOW_RESIZABLE
        SDL_WINDOW_MINIMIZED
        SDL_WINDOW_MAXIMIZED
        SDL_WINDOW_INPUT_GRABBED
        SDL_WINDOW_INPUT_FOCUS
        SDL_WINDOW_MOUSE_FOCUS
        SDL_WINDOW_FULLSCREEN_DESKTOP
        SDL_WINDOW_FOREIGN 
        )

    ],
    'SDL2::Renderer/type' => [
        qw(
        SDL_RENDERER_SOFTWARE
        SDL_RENDERER_ACCELERATED
        SDL_RENDERER_PRESENTVSYNC
        SDL_RENDERER_TARGETTEXTURE 
        )
    ],
    'SDL2::Log/priority' => [
        qw(
        SDL_LOG_PRIORITY_VERBOSE
        SDL_LOG_PRIORITY_DEBUG
        SDL_LOG_PRIORITY_INFO
        SDL_LOG_PRIORITY_WARN
        SDL_LOG_PRIORITY_ERROR
        SDL_LOG_PRIORITY_CRITICAL
        SDL_NUM_LOG_PRIORITIES

        )
    ]
);

#From https://github.com/PerlGameDev/SDL/blob/master/lib/SDL/Constants.pm#L609

my %seen;


foreach my $package ( keys %EXPORT_TAGS ) {
    my $super_package = $package;
    $super_package =~ s/\/.*$//;
    push( @{ $EXPORT_TAGS{$super_package} }, @{ $EXPORT_TAGS{$package} } )
        if $super_package ne $package;
    push( @EXPORT_OK, grep { !$seen{$_}++ } @{ $EXPORT_TAGS{$package} } );
}

use constant {
    SDL_INIT_TIMER           => 0x00000001,
    SDL_INIT_AUDIO           => 0x00000010,
    SDL_INIT_VIDEO           => 0x00000020,
    SDL_INIT_JOYSTICK        => 0x00000200,
    SDL_INIT_HAPTIC          => 0x00001000,
    SDL_INIT_GAMECONTROLLER  => 0x00002000,
    SDL_INIT_NOPARACHUTE     => 0x00100000,
    SDL_INIT_EVERYTHING      => 0x0000FFFF
}; # SDL/init

use constant {
 SDL_HINT_FRAMEBUFFER_ACCELERATION    => "SDL_FRAMEBUFFER_ACCELERATION",
 SDL_HINT_RENDER_DRIVER               => "SDL_RENDER_DRIVER",
 SDL_HINT_RENDER_OPENGL_SHADERS       => "SDL_RENDER_OPENGL_SHADERS",
 SDL_HINT_RENDER_SCALE_QUALITY        => "SDL_RENDER_SCALE_QUALITY",
 SDL_HINT_RENDER_VSYNC                => "SDL_RENDER_VSYNC",
 SDL_HINT_VIDEO_X11_XVIDMODE          => "SDL_VIDEO_X11_XVIDMODE",
 SDL_HINT_VIDEO_X11_XINERAMA          => "SDL_VIDEO_X11_XINERAMA",
 SDL_HINT_VIDEO_X11_XRANDR            => "SDL_VIDEO_X11_XRANDR",
 SDL_HINT_GRAB_KEYBOARD               => "SDL_GRAB_KEYBOARD",
 SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS    => "SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS",
 SDL_HINT_IDLE_TIMER_DISABLED  => "SDL_IOS_IDLE_TIMER_DISABLED",
 SDL_HINT_ORIENTATIONS  => "SDL_IOS_ORIENTATIONS",
 SDL_HINT_GAMECONTROLLERCONFIG  => "SDL_GAMECONTROLLERCONFIG",
 SDL_HINT_ALLOW_TOPMOST  => "SDL_ALLOW_TOPMOST",
 SDL_HINT_DEFAULT => 1,
 SDL_HINT_NORMAL => 2,
 SDL_HINT_OVERRIDE => 3
}; # SDL/hint

use constant {
    SDL_WINDOW_FULLSCREEN => 0x00000001, 
    SDL_WINDOW_OPENGL => 0x00000002, 
    SDL_WINDOW_SHOWN => 0x00000004, 
    SDL_WINDOW_HIDDEN => 0x00000008, 
    SDL_WINDOW_BORDERLESS => 0x00000010,
    SDL_WINDOW_RESIZABLE => 0x00000020,
    SDL_WINDOW_MINIMIZED => 0x00000040,
    SDL_WINDOW_MAXIMIZED => 0x00000080,
    SDL_WINDOW_INPUT_GRABBED => 0x00000100,
    SDL_WINDOW_INPUT_FOCUS => 0x00000200,
    SDL_WINDOW_MOUSE_FOCUS => 0x00000400,
    SDL_WINDOW_FULLSCREEN_DESKTOP => (  0x00000001 | 0x00001000 ),
    SDL_WINDOW_FOREIGN => 0x00000800 


}; # SDL/Window

use constant {
    SDL_RENDERER_SOFTWARE => 0x00000001,
    SDL_RENDERER_ACCELERATED => 0x00000002,
    SDL_RENDERER_PRESENTVSYNC => 0x00000004,
    SDL_RENDERER_TARGETTEXTURE => 0x00000008

};

use constant {
    SDL_LOG_PRIORITY_VERBOSE => 1,
    SDL_LOG_PRIORITY_DEBUG => 2,
    SDL_LOG_PRIORITY_INFO => 3,
    SDL_LOG_PRIORITY_WARN => 4,
    SDL_LOG_PRIORITY_ERROR => 5,
    SDL_LOG_PRIORITY_CRITICAL => 6,
    SDL_NUM_LOG_PRIORITIES => 7
}; # SDL2::Log/priority
1;
