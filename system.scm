;; This is an operating system configuration generated
;; by the graphical installer.
;;
;; Once installation is complete, you can learn and modify
;; this file to tweak the system configuration, and pass it
;; to the 'guix system reconfigure' command to effect your
;; changes.


;; Indicate which modules to import to access the variables
;; used in this configuration.
(use-modules (gnu)
	     (nongnu packages linux)
	     (gnu services base)
	     (gnu services syncthing)
	     (gnu services shepherd)
	     (semi packages xremap))
(use-service-modules cups desktop networking ssh xorg)

;; (define %my-services
;;   (modify-services %base-services
;; 		   (udev-rule
;; 		    "input.rules"
;; 		    (string-append "KERNEL==\"uinput\", GROUP=\"input\", TAG+=\"uaccess\""))))

(operating-system
 (kernel linux)
 (firmware (list linux-firmware))
 (locale "en_US.utf8")
 (timezone "America/Los_Angeles")
 (keyboard-layout (keyboard-layout "us"))
 (host-name "semiguix")

 ;; The list of user accounts ('root' is implicit).
 (users (cons* (user-account
                (name "semi")
                (comment "semi")
                (group "users")
                (home-directory "/home/semi")
                (supplementary-groups '("wheel" "netdev" "audio" "video" "input")))
	       %base-user-accounts))

 ;; Packages installed system-wide.  Users can also install packages
 ;; under their own account: use 'guix search KEYWORD' to search
 ;; for packages and 'guix install PACKAGE' to install a package.
 (packages (append (list (specification->package "nss-certs")
			 (specification->package "qtile"))
                   %base-packages))

 ;; Below is the list of system services.  To search for available
 ;; services, run 'guix system search KEYWORD' in a terminal.
 (services
  (cons* (service gdm-service-type
		  (gdm-configuration
		   (wayland? #t)
		   (xorg-configuration
		    (xorg-configuration (keyboard-layout keyboard-layout)))))
	 ;; Add a uinput udev rule so that Xremap can run without root
	 ;; permissions.
	 (udev-rules-service 'uinput
			     (udev-rule
			      "input.rules"
			      "KERNEL==\"uinput\", GROUP=\"input\", TAG+=\"uaccess\""))
	 (simple-service 'xremap-service
			 shepherd-root-service-type
			 (list (shepherd-service
				(provision '(xremap))
				(requirement '())
				(start #~(make-forkexec-constructor
					  (list #$(file-append xremap-0.8 "/bin/xremap")
						#$(local-file "xremap.yaml"))))
				(stop #~(make-kill-destructor)))))	  
	 (service cups-service-type)
	 (service syncthing-service-type
		  (syncthing-configuration (user "semi")))

         ;; This is the default list o
         ;; are appending to.
         (modify-services %desktop-services
			  (delete gdm-service-type))))
 (bootloader (bootloader-configuration
              (bootloader grub-efi-bootloader)
              (targets (list "/boot/efi"))
              (keyboard-layout keyboard-layout)))
 (mapped-devices (list (mapped-device
                        (source (uuid
                                 "22c00cf6-54e5-433d-bd63-446fd5050dc2"))
                        (target "guix")
                        (type luks-device-mapping))))

 ;; The list of file systems that get "mounted".  The unique
 ;; file system identifiers there ("UUIDs") can be obtained
 ;; by running 'blkid' in a terminal.
 (file-systems (cons* (file-system
		       (mount-point "/")
		       (device "/dev/mapper/guix")
		       (type "ext4")
		       (dependencies mapped-devices))
                      (file-system
		       (mount-point "/boot/efi")
		       (device (uuid "A7C6-7799"
                                     'fat32))
		       (type "vfat")) %base-file-systems)))
