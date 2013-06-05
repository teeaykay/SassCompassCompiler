#########################################################
# compass compile -c /path/to/this/file/config.rb --force
#########################################################

#   project_type = :stand_alone;
#   environment = :production; # :development is the other
#   project_path = Not needed in :stand_alone mode where it can be inferred by context.
http_path = "/"
css_dir = (environment == :production) ? 'css' : 'css\src'
#   css_path = <project_path>/<css_dir>;
#   http_stylesheets_path = http_path + "/" + css_dir;
sass_dir = 'css\src'
#   sass_path = <project_path>/<sass_dir>;
images_dir = 'images'
#   images_path = <project_path>/<images_dir>;
#   http_images_path = http_path + "/" + images_dir;
#   generated_images_dir = images_dir;
#   generated_images_path = <project_path>/<generated_images_dir>;
#   http_generated_images_path = http_path + "/" + generated_images_dir;
javascripts_dir = 'js'
#   javascripts_path = <project_path>/<javascripts_dir>;
#   http_javascripts_path = http_path + "/" + javascripts_dir;
#   output_style = :compressed; # (:nested|:expanded|:compact)
output_style = (environment == :production) ? :compressed : :nested
#
#   relative_assets Boolean Indicates whether the compass helper functions should generate relative urls from the generated css to assets, or absolute urls using the http path for that asset type.
#   additional_import_paths Array of Strings  Other paths on your system from which to import sass files. See the add_import_path function for a simpler approach.
#   disable_warnings  Boolean  Set this to true to silence deprecation warnings.
sass_options = {:cache => false}
#   sass_options  Hash  These options are passed directly to the Sass compiler. For more details on the format of sass options, please read the sass options documentation.
#   line_comments Boolean Indicates whether line comments should be added to compiled css that says where the selectors were defined. Defaults to false in production mode, true in development mode.
#   preferred_syntax  Symbol  Can be :scss or :sass. Defaults to :scss.
#   fonts_dir String  The directory where the font files are kept. Standalone projects will default to <css_dir>/fonts. Rails projects will default to "public/fonts".
#   fonts_path  String  The full path to where font files are kept. Defaults to <project_path>/<fonts_dir>.
#   http_fonts_path String  The full http path to font files on the web server.
#   http_fonts_dir  String  The relative http path to font files on the web server.
#   sprite_engine Symbol  Defaults to :chunky_png
#   chunky_png_options  Hash   Defaults to {:compression => Zlib::BEST_COMPRESSION}. See the chunky_png wiki for more information
#   sprite_load_path  Array  Defaults to [images_path]
