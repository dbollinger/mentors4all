import Ember from 'ember';

export default Ember.Component.extend({

  classNameBindings: ['favorited:is-favorited'],
  classNames: ['mentor-profile'],

  actions: {
    addToFavorites: function(){
      this.toggleProperty("favorited");
    }
  }
});
