{
  plugins.firenvim = {
    enable = true;
    autoLoad = true;
    lazyLoad.enable = false;
  };
  autoGroups = {
    nixvim_firenvim_filetypes = {};
  };
  autoCmd = [
    {
      desc = "leetcode.cn use cpp";
      event = ["BufEnter"];
      group = "nixvim_firenvim_filetypes";
      pattern = "leetcode.cn_*.txt";
      command = "set filetype=cpp";
    }
  ];
}
