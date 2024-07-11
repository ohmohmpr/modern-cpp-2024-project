# download open3d
wget https://github.com/isl-org/Open3D/releases/download/v0.18.0/open3d-devel-linux-x86_64-cxx11-abi-0.18.0.tar.xz
chmod +x open3d-devel-linux-x86_64-cxx11-abi-0.18.0.tar.xz
tar xf open3d-devel-linux-x86_64-cxx11-abi-0.18.0.tar.xz --transform 's/^open3d-devel-linux-x86_64-cxx11-abi-0.18.0/open3d/' -C 3rdparty
rm -rf open3d-devel-linux-x86_64-cxx11-abi-0.18.0.tar.xz

# download eigen
wget https://gitlab.com/libeigen/eigen/-/archive/3.4.0/eigen-3.4.0.tar.gz
chmod +x eigen-3.4.0.tar.gz
tar xf eigen-3.4.0.tar.gz --transform 's/^eigen-3.4.0/eigen/' -C 3rdparty
rm -rf eigen-3.4.0.tar.gz