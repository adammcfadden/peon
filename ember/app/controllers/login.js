import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    authenticate: function() {
      var data = this.getProperties('identification', 'password');
      this.get('session').authenticate('simple-auth-authenticator:devise', data);

      this.transitionToRoute('jobs');
    }
  }
});
