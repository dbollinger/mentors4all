import DS from 'ember-data';

export default DS.Model.extend({
  first_name: DS.attr('string'),
  last_name: DS.attr('string'),
  "location": DS.attr('string'),
  cs_expertise: DS.attr('string'),
  prior_experience: DS.attr('string'), 
  employment_location: DS.attr('string'),
});
