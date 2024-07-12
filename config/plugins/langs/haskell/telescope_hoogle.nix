{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "telescope_hoogle";
      src = pkgs.fetchFromGitHub {
        owner = "luc-tielen";
        repo = "telescope_hoogle";
        rev = "5c2ae51bcf905a7101134a597e6f7be2dc05f975";
        hash = "sha256-xxg20v3qE9TrQpfTKg0FzXISETnq7Q+B63s1naC/v1o=";
      };
    })
  ];
  plugins.telescope.enabledExtensions = ["hoogle"];
}
