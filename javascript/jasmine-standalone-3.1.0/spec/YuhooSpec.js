describe("Yuhoo", function() {
  var yu;
  var song = 'These are the words of my song, la la la.';

  beforeEach(function() {
    yu = new Yuhoo();
  });

  it("should be able to replay a recorded song", function() {
    yu.record(song);
    expect(yu.replay()).toEqual(song);
  });

  describe('when using a spy *without* callThrough', function(){
    beforeEach(function(){
      spyOn(yu, 'record');
      yu.record(song);
    })
    it("should be possible to track calls", function() {
      expect(yu.record).toHaveBeenCalledWith(song);
    });

    it("should *not* call the underlying function", function() {
      expect(yu.replay()).not.toEqual(song);
    });
  });

  describe('when using a spy *with* callThrough', function(){
    beforeEach(function(){
      spyOn(yu, 'record').and.callThrough();
      yu.record(song);
    })
    it("should be possible to track calls", function() {
      expect(yu.record).toHaveBeenCalledWith(song);
    });

    it("should call the underlying function", function() {
      expect(yu.replay()).toEqual(song);
    });
  });

});
