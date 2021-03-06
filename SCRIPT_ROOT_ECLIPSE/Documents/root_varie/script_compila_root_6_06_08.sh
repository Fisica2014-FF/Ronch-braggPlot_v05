# From https://root.cern.ch/phpBB3/viewtopic.php?t=21580


# Per non farlo partire per sbaglio... Ovviamente levarlo se lo script serve di nuovo

# echo "Commenta l'exit di sicurezza dal file"
# exit

echo "Impostando i compilatori giusti... gcc-5.4"

sudo update-alternatives --set gcc "/usr/bin/gcc-5"
sudo update-alternatives --set g++ "/usr/bin/g++-5"

sudo update-alternatives --set cc "/usr/bin/gcc"
sudo update-alternatives --set c++ "/usr/bin/g++"



 # install it into ...
ROOT_INSTALL_DIR="${HOME}/ROOT/v6-06-08"
rm -rf ${ROOT_INSTALL_DIR}
mkdir -p ${ROOT_INSTALL_DIR}
# download, unpack and build it in /tmp
cd ~/tmp

# Non riesce a scaricare, boh
rm -rf root-build root-6.06.08 root_v6.06.08.source.tar.gz*
wget https://root.cern.ch/download/root_v6.06.08.source.tar.gz

tar -zxf root_v6.06.08.source.tar.gz
mkdir root-build
cd root-build
unset ROOTSYS
cmake -DCMAKE_INSTALL_PREFIX="${ROOT_INSTALL_DIR}" -DCMAKE_CXX_FLAGS="-D_GLIBCXX_USE_CXX11_ABI=0" -Dcxx14="ON" -Dall="ON" -Ddavix="OFF" -Dr="OFF" -Dpythia8="OFF" -Dgeocad="ON" -Dbuiltin_ftgl="OFF" -Dbuiltin_glew="OFF" -Dsoversion="ON" ../root-6.06.08
make --jobs=8
cmake --build . --target install
# final cleanup
cd ../
# rm -rf root-build root-6.06.08 root_v6.06.08.source.tar.gz*
