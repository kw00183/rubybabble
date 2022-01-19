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
    tile_bag = [:A] * 9
    tile_bag << :B * 2
    tile_bag << :C * 2
    tile_bag << :D * 4
    tile_bag << :E * 12
    tile_bag << :F * 2
    tile_bag << :G * 3
    tile_bag << :H * 2
    tile_bag << :I * 9
    tile_bag << :J * 1
    tile_bag << :K * 1
    tile_bag << :L * 4
    tile_bag << :M * 2
    tile_bag << :N * 6
    tile_bag << :O * 8
    tile_bag << :P * 2
    tile_bag << :Q * 1
    tile_bag << :R * 6
    tile_bag << :S * 4
    tile_bag << :T * 6
    tile_bag << :U * 4
    tile_bag << :V * 2
    tile_bag << :W * 2
    tile_bag << :X * 1
    tile_bag << :Y * 2
    tile_bag << :Z * 1
  end
end
