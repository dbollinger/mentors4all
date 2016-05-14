import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function () {
  this.route('mentors', {path: '/mentors'});
  this.route('mentor', {path: '/mentor/:id'});
  this.route('overview', {path: '/overview'});
  this.route('apply', {path: '/apply'});
});

export default Router;
