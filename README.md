# gnu-cross

This is a simple, lightweight project for making cross-compilation toolchain with gnu libc.

## Supported targets

| Target                        | Kernel  | Binutils | GCC    | Glibc | Mold   |
|-------------------------------|---------|----------|--------|-------|--------|
| aarch64-unknown-linux-gnu     | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| alphaev56-unknown-linux-gnu   | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| alphaev67-unknown-linux-gnu   | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| arm-unknown-linux-gnueabi     | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| arm-unknown-linux-gnueabihf   | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| armv4t-unknown-linux-gnueabi  | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| armv5-unknown-linux-gnueabi   | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| armv6-unknown-linux-gnueabi   | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| armv6-unknown-linux-gnueabihf | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| armv7-unknown-linux-gnueabi   | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| armv7-unknown-linux-gnueabihf | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| i486-unknown-linux-gnu        | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| i586-unknown-linux-gnu        | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| i686-unknown-linux-gnu        | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| loongarch64-unknown-linux-gnu | 5.19.16 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| m68k-unknown-linux-gnu        | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| microblazeel-xilinx-linux-gnu | 6.18.22 | 2.46     | 15.2.0 | 2.43  | N/A    |
| microblaze-xilinx-linux-gnu   | 6.18.22 | 2.46     | 15.2.0 | 2.43  | N/A    |
| mipsel-unknown-linux-gnu      | 6.18.22 | 2.46     | 15.2.0 | 2.43  | N/A    |
| mipsel-unknown-linux-gnusf    | 6.18.22 | 2.46     | 15.2.0 | 2.43  | N/A    |
| mips-unknown-linux-gnu        | 6.18.22 | 2.46     | 15.2.0 | 2.43  | N/A    |
| mips-unknown-linux-gnusf      | 6.18.22 | 2.46     | 15.2.0 | 2.43  | N/A    |
| mips64el-unknown-linux-gnu    | 6.18.22 | 2.46     | 15.2.0 | 2.43  | N/A    |
| mips64-unknown-linux-gnu      | 6.18.22 | 2.46     | 15.2.0 | 2.43  | N/A    |
| or1k-unknown-linux-gnu        | 6.18.22 | 2.46     | 15.2.0 | 2.43  | N/A    |
| powerpcle-unknown-linux-gnu   | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| powerpcle-unknown-linux-gnusf | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| powerpc-unknown-linux-gnu     | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| powerpc-unknown-linux-gnusf   | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| powerpc64le-unknown-linux-gnu | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| powerpc64-unknown-linux-gnu   | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| riscv32-unknown-linux-gnu     | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| riscv64-unknown-linux-gnu     | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| s390-ibm-linux-gnu            | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| s390x-ibm-linux-gnu           | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| sparc-unknown-linux-gnu       | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| sparc64-unknown-linux-gnu     | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| sh4-multilib-linux-gnu        | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |
| x86_64-unknown-linux-gnu      | 6.18.22 | 2.46     | 15.2.0 | 2.43  | 2.41.0 |

## How to use

Download the tarball from the [release page](https://github.com/cross-tools/gnu-cross/releases) and extract it to `/opt/x-tools`:

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
- [glibc](https://www.gnu.org/software/libc)
