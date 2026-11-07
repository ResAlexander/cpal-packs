# 把玩家坐标存进 storage，再传给宏函数输出
execute store result storage cpalrailways:temp x int 1 run data get entity @p Pos[0]
execute store result storage cpalrailways:temp y int 1 run data get entity @p Pos[1]
execute store result storage cpalrailways:temp z int 1 run data get entity @p Pos[2]
function cpalrailways:lang/whereami with storage cpalrailways:temp
