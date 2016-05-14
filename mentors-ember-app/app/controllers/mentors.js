import Ember from 'ember';

export default Ember.Controller.extend({
  southSide: false,

  filteredResults: Ember.computed("model.[]", "model.length", "southSide", "model", function(){
      if (this.get("southSide")){
        return this.get("model").filter(function(item){
          return (item.id % 3) === 0;
        });
      }else{
        return this.get("model");
      }
  }),

  actions:{
    filterResults: function(){
      this.notifyPropertyChange("southSide");
    }
  }

});
