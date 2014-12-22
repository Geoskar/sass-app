# SASS App

A web app helping peer tutoring workshops. It manages:
  - Academic data (courses, majors, students, tutors)
  - Appointments data (start/end date, course, student(s), tutor)  
  - Automatic sync (period excel/database to dropbox)


### Version
3.0

### Tech

SASS App uses a number of open source projects to work properly:

* [AngularJS] - HTML enhanced for web apps!
* [Twitter Bootstrap] - great UI boilerplate for modern web apps
* [Gulp] - the streaming build system
* [keymaster.js] - awesome keyboard handler lib by [@thomasfuchs]
* [Laravel] -  A built on top of several Symfony components, giving applications a great foundation of well-tested and reliable code


### Plugins

SASS App is currently extended with plugins:
* Dropbox
* Github


### Development

Want to contribute? Great!  
SASS App uses the PHP [Laravel framework](laravel_framework).

Open your favorite Terminal and run these commands.

**Get the repo:**
```
$ git clone git@github.com:sass-team/sass-app.git
```

**Install the Laravel [homestead](laravel_homestead) for development environment**

### Testing
1. Create at your project's root directory: env.testing.php
2. Add to .env.testing.php your environment variables
        <?php  
        return [  
            'APP_ENV' => 'local',  
            'ILLUMINATE_ENCRYPTER_KEY' => 'your_generated_key',  
            'DB_HOST' => '127.0.0.1',  
            'DB_NAME' => 'sass_tests',  
            'DB_USERNAME' => 'homestead',  
            'DB_PASSWORD' => 'secret',  
            'DB_PORT' => '33060'  
        ];
3. Run your tests. e.g. from homestead: vendor/bin/codecepts run

License
----

[MIT](mit_license)

**Free Software, Hell Yeah!**

[laravel_framework]: http://laravel.com/
[laravel_homestead]: http://laravel.com/docs/4.2/homestead
[mit_license]: http://opensource.org/licenses/MIT