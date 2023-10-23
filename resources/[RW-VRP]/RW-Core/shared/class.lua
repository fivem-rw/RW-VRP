__collect_inits = true
__init_list = {}

function class(...)
  local cls,
    bases = {}, {...}

  cls.__class_instance = true

  for i, base in ipairs(bases) do
    for name, value in pairs(base) do
      cls[name] = value
    end
  end

  cls.__index,
    cls.is_a = cls, {[cls] = true}
  for i, base in ipairs(bases) do
    for c in pairs(base.is_a) do
      cls.is_a[c] = true
    end
    cls.is_a[base] = true
  end

  setmetatable(
    cls,
    {
      __call = function(c, ...)
        local instance = setmetatable({}, c)
        local init = instance.__init

        if not instance.tostring then
          instance.tostring = function()
          end
        end

        if init then
          local args = {...}
          if __collect_inits then
            table.insert(__init_list, {instance, generate_init_function(instance, args)})
          else
            generate_init_function(instance, args)()
          end
        end

        return instance
      end
    }
  )

  return cls
end

function generate_init_function(class_instance, args)
  return function()
    class_instance.__init(class_instance, unpack(args))
  end
end
