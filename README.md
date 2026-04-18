# uclibc-cross

This is a simple, lightweight project for making cross-compilation toolchain with uclibc libc.

## Supported targets

| Target                           | Kernel  | Binutils | GCC    | uClibc-ng | Mold   |
|----------------------------------|---------|----------|--------|-------|--------|
| aarch64-unknown-linux-uclibc     | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| aarch64-be-unknown-linux-uclibc  | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| alphaev56-unknown-linux-uclibc   | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| alphaev67-unknown-linux-uclibc   | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| arm-unknown-linux-uclibceabi     | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| arm-unknown-linux-uclibceabihf   | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| armv4t-unknown-linux-uclibceabi  | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| armv5-unknown-linux-uclibceabi   | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| armv6-unknown-linux-uclibceabi   | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| armv6-unknown-linux-uclibceabihf | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| armv7-unknown-linux-uclibceabi   | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| armv7-unknown-linux-uclibceabihf | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| i486-unknown-linux-uclibc        | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| i586-unknown-linux-uclibc        | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| i686-unknown-linux-uclibc        | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| m68k-unknown-linux-uclibc        | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| microblazeel-xilinx-linux-uclibc | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | N/A    |
| microblaze-xilinx-linux-uclibc   | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | N/A    |
| mipsel-unknown-linux-uclibc      | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | N/A    |
| mipsel-unknown-linux-uclibcsf    | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | N/A    |
| mips-unknown-linux-uclibc        | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | N/A    |
| mips-unknown-linux-uclibcsf      | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | N/A    |
| mips64el-unknown-linux-uclibc    | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | N/A    |
| mips64-unknown-linux-uclibc      | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | N/A    |
| or1k-unknown-linux-uclibc        | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | N/A    |
| powerpcle-unknown-linux-uclibc   | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| powerpcle-unknown-linux-uclibcsf | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| powerpc-unknown-linux-uclibc     | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| powerpc-unknown-linux-uclibcsf   | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| powerpc64le-unknown-linux-uclibc | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| powerpc64-unknown-linux-uclibc   | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| riscv32-unknown-linux-uclibc     | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| riscv64-unknown-linux-uclibc     | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| s390-ibm-linux-uclibc            | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| s390x-ibm-linux-uclibc           | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| sparc-unknown-linux-uclibc       | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| sparc64-unknown-linux-uclibc     | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| sh4-multilib-linux-uclibc        | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |
| x86_64-unknown-linux-uclibc      | 6.18.22 |   2.46   | 15.2.0 | 1.0.57 | 2.41.0 |

## How to use

Download the tarball from the [release page](https://github.com/cross-tools/uclibc-cross/releases) and extract it to `/opt/x-tools`:

```sh
sudo mkdir -p /opt/x-tools
sudo tar -xf ${target}.tar.xz -C /opt/x-tools
```

## How to build

Fork this project and create a new release, or build manually:

```sh
./scripts/make ${target}
```

## License

MIT

## Acknowledgements

We would like to express our gratitude to the following individuals and projects:

- [crosstool-ng](https://github.com/crosstool-ng/crosstool-ng)
- [uClib-ng](https://uclibc-ng.org)
