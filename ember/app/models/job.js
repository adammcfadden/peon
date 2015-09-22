import DS from 'ember-data';

export default DS.Model.extend({
  position: DS.attr('string'),
  company: DS.attr('string'),
  actions: DS.hasMany('action', {async: true})
});
