class DS
  def initialize; end

  def get_cpu_info(workstation_id); end

  def get_cpu_price(workstation_id); end

  def get_mouse_price(workstation_id); end

  def get_mouse_info(workstation_id); end

  def get_keyboard_info(workstation_id); end

  def get_keyboard_price(workstation_id); end
end

ds = DS.new
ds.get_cpu_info 42
ds.get_cpu_price 42
ds.get_keyboard_info 42
ds.get_mouse_info 42
