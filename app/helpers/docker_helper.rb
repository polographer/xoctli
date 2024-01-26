require 'docker'

module DockerHelper
    def self.get_containers
        Docker::Container.all(all: true)
    end

    def self.get_images
        Docker::Image.all
    end

    def self.get_volumes
        Docker::Volume.all
    end

    def self.get_networks
        Docker::Network.all
    end

    def self.get_info
        @get_info ||= Docker.info
    end

    def self.get_version
        Docker.version
    end

    def self.get_events
        Docker::Event.stream { |event| puts "#{event.status}: #{event.id} #{event.from} #{event.time}" }
    end

    def self.get_container(id)
        Docker::Container.get(id)
    end

    def self.get_image(id)
        Docker::Image.get(id)
    end

    def self.get_volume(id)
        Docker::Volume.get(id)
    end

    def self.get_network(id)
        Docker::Network.get(id)
    end

    def self.get_container_logs(id)
        Docker::Container.get(id).logs(stdout: true, stderr: true, timestamps: true, tail: 100)
    end

    def self.get_container_stats(id)
        Docker::Container.get(id).stats
    end

    def self.get_container_processes(id)
        Docker::Container.get(id).top
    end

    def self.get_container_changes(id)
        Docker::Container.get(id).changes
    end

    def self.get_container_export(id)
        Docker::Container.get(id).export
    end

    def self.get_container_archive(id)
        Docker::Container.get(id).archive
    end

    def self.get_container_attach(id)
        Docker::Container.get(id).attach
    end

    def self.get_container_commit(id)
        Docker::Container.get(id).commit
    end

    def self.get_container_copy(id)
        Docker::Container.get(id).copy
    end

    def self.get_container_create(id)
        Docker::Container.get(id).create
    end

    def self.get_container_diff(id)
        Docker::Container.get(id).diff
    end

    def self.get_container_exec(id)
        Docker::Container.get(id).exec
    end

    def self.get_container_kill(id)
        Docker::Container.get(id).kill
    end

    def self.get_container_pause(id)
        Docker::Container.get(id).pause
    end

    # def self.get_container_rename(id)
    #     Docker
end
