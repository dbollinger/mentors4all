import Ember from 'ember';

export default Ember.Component.extend({

  classNameBindings: ['favorited:is-favorited'],
  classNames: ['mentor-profile'],

  actions: {
    toggleProperty: function(prop){
      this.toggleProperty(prop);
    },

    addToFavorites: function(){
      this.toggleProperty("favorited");
    }
  }
});
