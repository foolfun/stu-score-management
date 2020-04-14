package stu;
import java.io.IOException;
import java.io.RandomAccessFile;

public class File_txt {
	public void filein(String filename, String content) {
		synchronized (content) {
		try {
			RandomAccessFile af = new RandomAccessFile(filename, "rw");// 打开一个随机访问文件流，按读写方式
			long flength = af.length();	// 文件长度，字节数			
			af.seek(flength);// 将写文件指针移到文件尾。
			af.writeBytes(content+"\r\n");
			af.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		}
	}
}
