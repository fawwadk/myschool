(function ($) {
  Drupal.behaviors.hello_world = {
    attach: function(context, settings) {
      // code goes here
      alert('Hi');
    }
  };
})(jQuery);