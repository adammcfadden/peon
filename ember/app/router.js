import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('about');
  this.resource('jobs', function() {
    this.route('show', {path: ':job_id'});
    this.route('new-job');
  });
});

export default Router;
