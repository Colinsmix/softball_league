export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('stat_line', params.stat_line_id);
  },
  actions: {
    destroyRecord: function() {
      var model = this.get('controller.model');
      var _this = this;
      model.destroyRecord().then(function() {
        _this.transitionTo('stat_lines.index');
      });
    }
  }
});
