var googleBooksUrl = "https://www.googleapis.com/books/v1/volumes?q=isbn:"; // Static part of the Google Books URL

$('form').on('submit', function(e) {  // When the user submits the form
   e.preventDefault();   // Stop the page from reloading
   var isbn = $('#isbn').val();   // Find out what they entered into the isbn input
    $.ajax({        // Make an ajax GET request
      type:'GET',
      url: googleBooksUrl + isbn,     // The URL where we can get the book info
      success: function( response ) {

  // Set bookInfo equal to the object stored in the volumeInfo object in the response that was returned
        var response = response.items[0].volumeInfo;

        var source = $('#book-template').html();

        var template = Handlebars.compile(source);

        var book = {
          title: response.title,
          description: response.description,
          img: response.imageLinks.thumbnail,
          preview: response.previewLink
        }

        var newHtml = template(book);

  // The HTML/data we want to add to the list
        
    $('.row').append(newHtml);  // Append each book to the list
      }
  });
});


// it is convention to use all caps for constants
// constants are variables whose value are not expected to change, immutable