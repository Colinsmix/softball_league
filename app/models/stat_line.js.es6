export default DS.Model.extend({
  playerId: DS.attr('number'),
  gameId: DS.attr('number'),
  ab: DS.attr('number'),
  1b: DS.attr('number'),
  2b: DS.attr('number'),
  3b: DS.attr('number'),
  hr: DS.attr('number'),
  bb: DS.attr('number'),
  hbp: DS.attr('number'),
  k: DS.attr('number'),
  sac: DS.attr('number'),
  rbi: DS.attr('number'),
  sb: DS.attr('number')
});
