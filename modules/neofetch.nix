{ pkgs, ... }:

{
  xdg.configFile."neofetch/config.conf".text = ''
    # https://github.com/dylanaraps/neofetch/wiki/Customizing-Info
    print_info() {
        info title
        info underline

        info "$(color 4)OS" distro
        info "$(color 4)Host" model
        info "$(color 4)Kernel" kernel
        info "$(color 4)Packages" packages
        info "$(color 4)Shell" shell
        info "$(color 4)DE" de
        info "$(color 4)WM" wm
        info "$(color 4)Terminal" term
        info "$(color 4)CPU" cpu
        info "$(color 4)GPU" gpu
        info "$(color 4)Disk" disk
        info "$(color 4)Memory" memory

        info cols
    }

    title_fqdn="off"
    kernel_shorthand="on"
    distro_shorthand="on"
    os_arch="on"
    uptime_shorthand="on"
    memory_percent="off"
    memory_unit="mib"
    package_managers="on"
    shell_path="off"
    shell_version="on"
    speed_type="bios_limit"
    speed_shorthand="on"
    cpu_brand="on"
    cpu_speed="on"
    cpu_cores="logical"
    cpu_temp="off"
    gpu_brand="on"
    gpu_type="all"
    refresh_rate="off"
    gtk_shorthand="off"
    gtk2="on"
    gtk3="on"
    public_ip_host="http://ident.me"
    public_ip_timeout=2
    local_ip_interface=('auto')
    de_version="on"
    disk_show=('/' '/home')
    disk_subtitle="mount"
    disk_percent="on"
    music_player="auto"
    song_format="%artist% - %album% - %title%"
    song_shorthand="off"
    mpc_args=()

    colors=(0 1 2 3 4 5 6 7)
    color_0="#0d1b2a"
    color_1="#f07178"
    color_2="#ff8661"
    color_3="#ff8e72"
    color_4="#e0e1dd"
    color_5="#a9b1bc"
    color_6="#1b263b"
    color_7="#e0e1dd"

    ascii_colors=(1 4)
    ascii="on"
    image_backend="ascii"
    image_source="auto"

    bold="on"
    underline_enabled="on"
    underline_char="-"

    separator=":"
    block_range=(0 15)
    color_blocks="on"
    block_width=3
    block_height=1
    col_offset="auto"
    bar_char_elapsed="-"
    bar_char_total="="
    bar_border="on"
    bar_length=15
    bar_color_elapsed="distro"
    bar_color_total="distro"
    memory_display="off"
    battery_display="off"
    disk_display="off"
  '';
}
