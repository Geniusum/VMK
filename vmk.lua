local args = {...}

if #args == 0 then
  print("Usage: vmk <images number> <images prefix> <loop>")
else
  images_number = args[1]
  images_prefix = args[2]
  loop = args[3]
  for i = 1, images_number do
    local let1 = paintutils.loadImage(images_prefix .. i)
    term.setCursorPos(1, 1)
    paintutils.drawImage(let1, 1, 1)
    sleep(0.8)
  end
  print("Video done !")
end
