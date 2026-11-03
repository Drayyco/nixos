{
    description = "DrayNix - NixOS + HomeManager";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
        home-manager.url = "github:nix-community/home-manager/release-26.05";
        ratune.url = "github:acmagn/ratune";
        home-manager.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = { self, nixpkgs, home-manager, ... }@inputs:
        let
        system = "x86_64-linux";
    in
    {
        nixosConfigurations.draynix =
            nixpkgs.lib.nixosSystem {
                specialArgs = {
                    inherit self inputs;
                };
                modules = [
                    ./host
                        home-manager.nixosModules.home-manager
                        {
                            nixpkgs.hostPlatform = system;

                            home-manager = {
                                useGlobalPkgs = true;
                                useUserPackages = true;
                                backupFileExtension = "backup";
                                extraSpecialArgs = { inherit inputs; };
                                users.dray = import ./home;
                            };
                        }
                ];
            };
    };
}
