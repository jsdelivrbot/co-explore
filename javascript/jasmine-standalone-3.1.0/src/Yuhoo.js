function Yuhoo() {
  this.song = 'No song yet :-(';
}
Yuhoo.prototype.record = function(song) {
  this.song = song;
};
Yuhoo.prototype.replay = function(song) {
  return this.song;
};
