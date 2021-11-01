-- LuaTools需要PROJECT和VERSION这两个信息
PROJECT = "demo"
VERSION = "1.0.0"

-- 一定要添加sys.lua !!!!
local sys = require "sys"

-- sys.taskInit(function()
--     if i2c.setup(0, i2c.FAST, 0x38) == 1 then
--         log.info("存在 i2c0")
--     else
--         i2c.close(0) -- 关掉
--         log.info("i2c0打开失败")
--     end
--     while true do
--         log.info("esp32c3", "Go Go Go ~")
--         sys.wait(1000)
--     end
-- end)

-- sys.taskInit(function()
--     local G8 = gpio.setup(8, 0) -- 输出模式
--     while 1 do
--         G8(0)
--         sys.wait(1000)
--         G8(1)
--         sys.wait(1000)
--     end
-- end)

-- sys.taskInit(function ()
--     for i=0,4 do
--         adc.open(i)
--     end

--     while 1 do
--         for i=0,4 do
--             log.info("adc"..i,adc.read(i))
--         end
--         sys.wait(1000)
--     end
-- end)

-- sys.taskInit(function ( ... )
--     pwm.open(5,5000,50)
-- end)

-- sys.timerLoopStart(function ( ... )
--     log.info("mem.lua", rtos.meminfo())
--     log.info("mem.sys", rtos.meminfo("sys"))
-- end,1000)

-- sys.taskInit(function ( ... )
--     wlan.init()
--     wlan.setMode(wlan.STATION)
--     wlan.connect("Redmi_A123", "3.1415926")
-- end)

-- sys.taskInit(function()
--     sys.wait(3000)
--     err = spi.setup(2)
--     log.info("spi-setup", err)
--     err = spi.send(2, string.char(0x03))
--     log.info("spi-send", err)
--     -- err = spi.close(2)
--     -- log.info("spi-close", err)
-- end)

-- sys.taskInit(function ( ... )
--     ret = ble.init()
--     log.info("ble", "ble_init:",ret)
--     sys.wait(10*1000)
--     ret2 = ble.deinit()
--     log.info("ble", "ble_deinit",ret2)
-- end)

-- sys.taskInit(function ( ... )
--     ret = wlan.init()
--     log.info("wlan", "wlan_init:",ret)
--     wlan.setMode(wlan.STATION)
--     wlan.connect("Redmi_A123", "3.1415926")
--     wlan.disconnect()
--     -- sys.wait(10*1000)
--     ret2 = wlan.deinit()
--     log.info("wlan", "wlan_deinit",ret2)
-- end)

-- sys.taskInit(function()
--     log.info("tag", "start")

--     stamac = esp32.getmac(0)
--     log.info("stamac", string.toHex(stamac))

--     apmac = esp32.getmac(1)
--     log.info("apmac", string.toHex(apmac))

--     btmac = esp32.getmac(2)
--     log.info("btmac", string.toHex(btmac))

--     ethmac = esp32.getmac(3)
--     log.info("ethmac", string.toHex(ethmac))
-- end)

-- sys.taskInit(function ()
--     for i=0,4 do
--         adc.open(i)
--     end

--     while 1 do
--         for i=0,4 do
--             log.info("adc"..i,adc.read(i))
--         end
--         sys.wait(1000)
--     end
-- end)

sys.taskInit(
    function()
        local re = esp32.getchip()
        log.info("esp32", "chip", re['chip'])
        log.info("esp32", "features", re['features'])
        log.info("esp32", "cores", re['cores'])
        log.info("esp32", "revision", re['revision'])
    end
)

-- 用户代码已结束---------------------------------------------
-- 结尾总是这一句
sys.run()
-- sys.run()之后后面不要加任何语句!!!!!
