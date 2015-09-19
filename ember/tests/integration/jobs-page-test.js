import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from '../helpers/start-app';

var App;

module('Integration - Jobs Page', {
  beforeEach: function() {
    App = startApp();
  },
  afterEach: function() {
    Ember.run(App, 'destroy');
  }
});

test('Should allow navigation to the jobs page from the landing page', function(assert) {
  visit('/').then(function() {
    click('a:contains("Jobs")').then(function() {
      assert.equal(find('h3').text(), 'Jobs');
    });
  });
});
