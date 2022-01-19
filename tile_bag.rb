# Brute-force fills the bag with a set of tiles with the Scrabble points
# and letter distribution (ignoring the blank tiles)
# 1-pt tiles: E, A, I, O, N, R, T, L, S, U
# 2-pt tiles: D, G
# 3 pt tiles: B, C, M, P
# 4 pt tiles: F, H, V, W, Y
# 5-pt tiles: K
# 8-pt tiles: J, X
# 10-pt tiles: Q, Z
class TileBag
  def initialize
    tile_bag = []
    tile_bag.push 9.ti :A
    tile_bag.push 2.times() :B
    tile_bag.push 2.times() :C
    tile_bag.push 4.times() :D
    tile_bag.push 12.times() :E
    tile_bag.push 2.times() :F
    tile_bag.push 3.times() :G
    tile_bag.push 2.times() :H
    tile_bag.push 9.times() :I
    tile_bag.push 1.times() :J
    tile_bag.push 1.times() :K
    tile_bag.push 4.times() :L
    tile_bag.push 2.times() :M
    tile_bag.push 6.times() :N
    tile_bag.push 8.times() :O
    tile_bag.push 2.times() :P
    tile_bag.push 1.times() :Q
    tile_bag.push 6.times() :R
    tile_bag.push 4.times() :S
    tile_bag.push 6.times() :T
    tile_bag.push 4.times() :U
    tile_bag.push 2.times() :V
    tile_bag.push 2.times() :W
    tile_bag.push 1.times() :X
    tile_bag.push 2.times() :Y
    tile_bag.push 1.times() :Z
    puts "What should we say?"
    puts tile_bag.length()
  end
end
