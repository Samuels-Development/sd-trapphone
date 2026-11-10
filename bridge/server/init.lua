---@type table Tagged debug logger for this file (bridge.shared.debug).
local dprint = require('bridge.shared.debug').tag('bridge:init')

dprint('init: loading server bridge sub-modules...')

require 'bridge.server.player'
dprint('init: bridge.server.player loaded')

require 'bridge.server.notify'
dprint('init: bridge.server.notify loaded')

require 'bridge.server.inventory'
dprint('init: bridge.server.inventory loaded')

require 'bridge.server.money'
dprint('init: bridge.server.money loaded')

require 'bridge.server.job'
dprint('init: bridge.server.job loaded')

require 'bridge.server.gang'
dprint('init: bridge.server.gang loaded')

require 'bridge.server.stash'
dprint('init: bridge.server.stash loaded')

require 'bridge.server.vehicles'
dprint('init: bridge.server.vehicles loaded')

---@type table Version-checker helper module (bridge.server.version).
local version = require 'bridge.server.version'
dprint('init: bridge.server.version loaded')

---@type table Detected framework descriptor (bridge.shared.framework).
local framework = require 'bridge.shared.framework'

---@type table Detected inventory resource descriptor (bridge.shared.inventory_id).
local inventoryId = require 'bridge.shared.inventory_id'

dprint('init: all server bridge modules loaded — framework=%s inventory=%s', tostring(framework.name), tostring(inventoryId.name or 'framework-default'))

print(('^2[SD-TRAPPHONE]^0 Bridge initialised — Framework: ^3%s^0, Inventory: ^3%s^0'):format(
    framework.name, inventoryId.name or 'framework-default'))

-- 汉化版：原先这里会对 GitHub Releases 发起一次外网请求（api.github.com）。
-- 国内机房访问 GitHub 极不稳定，且该请求对本服毫无运行价值，
-- 因此整段注释掉，彻底切断对境外 CDN / API 的依赖。
-- 需要恢复官方更新提示时，取消下一行注释即可。
-- version.check('sd-versions/sd-trapphone')
