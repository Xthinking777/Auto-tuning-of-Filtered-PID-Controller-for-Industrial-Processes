function transfer = spe(data,d_real)
[h,w]=freqz(data);
[aa,bb]=invfreqz(h,w,d_real+4,d_real+5);
transfer=filt(aa,bb);
end