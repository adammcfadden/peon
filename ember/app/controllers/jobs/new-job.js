import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    create: function(){
      var new_job = this.store.createRecord('job',{
        position: this.get('position'),
        company: this.get('company')
      });
      new_job.save();
      this.transitionToRoute('jobs'); //change this to go to the specifc job route later.

      this.set('position', null)
      this.set('company', null)
    }
  }
});
