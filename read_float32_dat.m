function dfloat32=read_usrp_dat(fname)

fid=fopen(fname,'r');
dfloat32=fread(fid,'float32');
fclose(fid);
iq_data=dfloat32(1:2:end)+dfloat32(2:2:end)*1i;
iq_data=double(iq_data);