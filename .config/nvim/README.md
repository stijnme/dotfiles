# nvim

## Configuration files


```mermaid

flowchart TD
  rootInit(init.lua)
  rootMelxaco(melxaco/init.lua)
  configLazy(config/lazy.lua)
  coreColor(core/colorscheme.lua)
  coreKeymap(core/keymaps.lua)
  coreOption(core/options.lua)

  rootInit --> rootMelxaco

  subgraph melxaco
    rootMelxaco --> coreOption
    coreOption --> coreKeymap
    coreKeymap --> configLazy
    configLazy --> plugins
    plugins --> colorscheme
  end

``` 

| Folder | File | Description |
| ---- | --- | ----------- |
| root | init.lua | initial config file at `~/.config/nvim` |
| lua/melxaco | init.lua | |

