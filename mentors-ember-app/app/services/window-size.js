import Ember from 'ember';

export default Ember.Service.extend({
  windowWidth: 0,
  windowHeight: 0,

  initWindowWatcher: Ember.on('init', function(){
    Ember.$(window).on('resize', this, this.debounceWindowSize.bind(this));
  }),

  debounceWindowSize: function(evt){
    Ember.run.debounce(this, function(){
      this.set("windowWidth", window.outerWidth);
      this.set("windowHeight", window.outerHeight);
    }, 300);
  },

  isSmallScreen: Ember.computed.lt('windowWidth', 480)

});
