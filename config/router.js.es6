var Router = Ember.Router.extend();

Router.map(function() {
  this.resource('stat_lines', function() {
    this.route('new');
    this.route('show', {path: ':stat_line_id'});
    this.route('edit', {path: ':stat_line_id/edit'});
  });
  this.resource('games', function() {
    this.route('new');
    this.route('show', {path: ':game_id'});
    this.route('edit', {path: ':game_id/edit'});
  });
  this.resource('players', function() {
    this.route('new');
    this.route('show', {path: ':player_id'});
    this.route('edit', {path: ':player_id/edit'});
  });
  this.resource('teams', function() {
    this.route('new');
    this.route('show', {path: ':team_id'});
    this.route('edit', {path: ':team_id/edit'});
  });
});

export default Router;
