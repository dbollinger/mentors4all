import DS from 'ember-data';

export default DS.Model.extend({
  firstName: DS.attr('string'),
  lastName: DS.attr('string'),
  description: DS.attr('string'),
  image: DS.attr('string'),
});
