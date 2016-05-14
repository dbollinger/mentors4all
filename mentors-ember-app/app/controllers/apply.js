import Ember from 'ember';

export default Ember.Controller.extend({
  model: Ember.Object.create({}),
  
  actions: {
    submitApplicationForm: function(){
      this.set('model.submitted', true);
    }
  }
});
