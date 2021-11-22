function dfloat32=write_float32_dat(data,filename)

% open filename and write data to the file as 32 bit floats

fid=fopen(filename,'w');
dfloat32=fwrite(fid,data,'float32');
fclose(fid);

iq_data=dfloat32(1:2:end)+dfloat32(2:2:end)*1i;
iq_data=double(iq_data);