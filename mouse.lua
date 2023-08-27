-- Dependencies
-- 1. coroutine.lua

poke(0x5F2D, 1)
m_x,m_y = 0,0
m_on=false
m_cr = true

function upd_m()
    get_m_xy()
    chk_m_clk()
end

function mouse_init()
    if m_cr then
        make_cr(function()
            m_on = true
            while true do
                upd_m()
                yield()
            end
        end)
    end
    
end

function get_m_xy()
    m_x, m_y = flr(stat(32)),flr(stat(33))
end

function chk_m_clk()
    if (m_clk==nil) then
        m_clk = false
        m_hld = false
    end

    if (stat(34)==1) then
        if (not m_clk and not m_hld) then
            -- printh("mouse clicked")
            m_clk = true
            m_hld = true
            create_coroutine(function()
                -- printh("mouse held")
                local t = 0
                while m_hld do
                    t+=1
                    if t>6 then
                        break
                    end
                    yield()
                end
                m_clk = false
            end)
        
        end
    else 
        m_hld = false
        m_clk = false
    end
end

function draw_m()
    spr(0, m_x, m_y, 1, 2, false, false)
end