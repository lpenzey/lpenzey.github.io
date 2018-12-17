var googleBooksUrl = "https://www.googleapis.com/books/v1/volumes?q=isbn:"; 

$('form').on('submit', function(e) {  
   e.preventDefault();   
   var isbn = $('#isbn').val();   
    $.ajax({        
      type:'GET',
      url: googleBooksUrl + isbn,     
      success: function( response ) {

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

    // Append each book to the list   
    $('.row').append(newHtml);  
      }
  });
});


