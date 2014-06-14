var fs = require( 'fs' ),
    data = require( './data.js' ).data,
    _ = require( 'underscore' );

fs.readFile( 'template.html', 'utf8', function( err, template ) {
    if( err ) {
        throw new Error( err );
    }

    var output = '';

    _.each( data, function( chapter ) {
        var id = chapter.title.replace( / /g, '-' ).toLowerCase();

        output += '\n\n<h3 id="' + id + '">' + chapter.title + '</h3>\n';
        if( chapter.comment ) {
            output += '<p class="comment">' + chapter.comment + '</p>\n';
        }

        output += '<ul>';

        _.each( chapter.index, function( source, name ) {

            output += '<li>' + name + ':';

            if( !_.isArray( source ) ) {
                source = [ source ];
            }

            _.each( source, function( num ) {
                output += ' <a href="source_' + num + '.html">[' + 
                    num + ']</a>';
            });

            output += '</li>';    
        });

        output += '</ul>';
    });

    fs.open( 'source_index.html', 'w', function( err, fd ) {
        if( err ) {
            throw new Error( err );
        }

        fs.write( fd, template.replace( '{{INDEX}}', output ) );
    });
});
