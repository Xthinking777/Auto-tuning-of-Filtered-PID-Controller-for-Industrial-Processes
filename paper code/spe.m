function transfer = spe(data,d_real)%�׹����󴫵ݺ�������
[h,w]=freqz(data);
[aa,bb]=invfreqz(h,w,d_real+4,d_real+5);%�׹��Ʒ����õ�ϵͳ���ݺ�������/��ĸϵ��(n+5��)
transfer=filt(aa,bb);
end