export default Ember.Route.extend({
  model: function() {
    return this.store.find('stat_line');
  }
});
