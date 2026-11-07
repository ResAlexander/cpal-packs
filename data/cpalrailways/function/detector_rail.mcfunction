# 入口：探测铁轨 → 指令方块调用示例
# 指令方块内写：function cpalrailways:detector_rail {track:"service",json:"其它参数"}
# 用宏直接把 track 拼进函数路径，路由到 data/cpalrailways/function/lang/<track>.mcfunction
# 若调用时未给 track，默认走 service。
$function cpalrailways:lang/$(track service)
