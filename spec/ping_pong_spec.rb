require('rspec')
require('ping_pong')


describe('Fixnum#ping_pong') do
  it("outputs an array of [1] when the number 1 calls the method") do
    expect(1.ping_pong).to(eq([1]))
  end

  it("outputs an array of [1, 2] when the number 2 calls the method") do
    expect(2.ping_pong).to(eq([1, 2]))
  end

  it("outputs an array of [1, 2, 'ping'] when the number 3 calls the method, with multiples of 3 replaced by 'ping'") do
    expect(3.ping_pong).to(eq([1,2,'ping']))
  end

  it("outputs an array of [1, 2, 'ping', 4, 'pong'] when the number 5 calls the method, with multiples of 3 replaced by 'ping' and multiples of 5 replaced by 'pong'") do
    expect(5.ping_pong).to(eq([1,2,'ping', 4, 'pong']))
  end

  it("outputs an array of [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'ping-pong'] when the number 15 calls the method, with multiples of 3 replaced by 'ping' and multiples of 5 replaced by 'pong' and multiples of both replaced by 'ping-pong'") do
    expect(15.ping_pong).to(eq([1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'ping-pong']))
  end
end
