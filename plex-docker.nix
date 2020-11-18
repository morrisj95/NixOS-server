{ pkgs, ... }:
{
  systemd.services.plex = {
    description = "Plex";
    wantedBy = [ "multi-user.target" ];
    after = [ "docker.service" "docker.socket" ];
    requires = [ "docker.service" "docker.socket" ];
    script = ''
      exec ${pkgs.docker}/bin/docker run \
	--name=plex \
	--network=bridge \
	-v ${./plex.yml}:/etc/plex/plex.yml \
	-v /opt/plex:/config \
	-v /opt/plex/tvseries:/tv \
	-v /opt/plex/movies:/movies \
	-v /opt/plex/music:/music \
	--group-add audio \
	--group-add 4138 \
	-e UMASK_SET=022 \
	-p 32400:32400 \
	-p 1900:1900/udp \
	-p 3005:3005 \
	-p 5353:5353/udp \
	-p 8324:8324 \
	-p 32410:32410/udp \
	-p 32412:32412/udp \
	-p 32413:32413/udp \
	-p 32414:32414/udp \
	-p 32469:32469 \
	--restart unless-stopped \
	linuxserver/plex
    '';
    #scriptArgs = lib.concatStringsSep "" [
    #  "--
  };
}
