import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function () {
  this.route('mentor', {path: '/mentor/:mentor_id'});
  this.route('mentors', {path: '/mentors'});
  this.route('overview', {path: '/overview'});
  this.route('apply', {path: '/apply'});
});

export default Router;
