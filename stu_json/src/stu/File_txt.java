package stu;
import java.io.IOException;
import java.io.RandomAccessFile;

public class File_txt {
	public void filein(String filename, String content) {
		synchronized (content) {
		try {
			RandomAccessFile af = new RandomAccessFile(filename, "rw");// ��һ����������ļ���������д��ʽ
			long flength = af.length();	// �ļ����ȣ��ֽ���			
			af.seek(flength);// ��д�ļ�ָ���Ƶ��ļ�β��
			af.writeBytes(content+"\r\n");
			af.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		}
	}
}
