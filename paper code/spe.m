function transfer = spe(data,d_real)%谱估计求传递函数程序
[h,w]=freqz(data);
[aa,bb]=invfreqz(h,w,d_real+4,d_real+5);%谱估计方法得到系统传递函数分子/分母系数(n+5阶)
transfer=filt(aa,bb);
end