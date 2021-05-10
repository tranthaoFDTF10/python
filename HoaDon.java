package uml;
import java.util.Scanner;
public class HoaDon {
	private String MaSoHD; //Ma so hoa don
	private String NoiDungHD; //Noi dung mua
	private Date NgayLapHD; //ngay lap hoa don
	private KhachHang KH; // khach hang 
	private ChiTietHH c[]; // Chi tiet hang hoa la mang cac hang hoa
	private int SoLuongCT; //so luong chi tiet hang hoa
	
	public HoaDon() {
		MaSoHD = new String();
		NoiDungHD = new String();
		NgayLapHD = new Date();
		KH = new KhachHang();
		c = new ChiTietHH[20];
		SoLuongCT = 0;
	}
	public HoaDon(String ms, String nd, Date n, KhachHang k, ChiTietHH ct[], int sl) {
		MaSoHD = new String(ms);
		NoiDungHD = new String(nd);
		NgayLapHD = new Date(n);
		KH = new KhachHang(k);
		c = ct;
		this.SoLuongCT = sl;
	}
	public HoaDon(HoaDon hd) {
		MaSoHD = new String(hd.MaSoHD);
		NoiDungHD = new String(hd.NoiDungHD);
		NgayLapHD = new Date(hd.NgayLapHD);
		KH = new KhachHang(hd.KH);
		this.SoLuongCT = hd.SoLuongCT;
		for(int i=0;i<SoLuongCT;i++) {
			c[i] = new ChiTietHH();
		}
	}
	public void nhapHD() {
		Scanner sc = new Scanner(System.in);
		System.out.print("\nNhap ma so hoa don: ");
		MaSoHD = sc.nextLine();
		System.out.print("\nNhap noi dung hoa don: ");
		NoiDungHD = sc.nextLine();
		System.out.print("\nNhap ngay lap hoa don: ");
		NgayLapHD.nhap();
		System.out.print("\nNhap so luong chi tiet hang hoa: ");
		if(sc.hasNextInt()) {
			SoLuongCT = sc.nextInt();
		}
		else SoLuongCT=1;
		//sc.nextLine();
		for(int i=0;i<SoLuongCT;i++) {
			System.out.print("Nhap thong tin hang hoa thu "+(i+1)+": ");
			c[i] = new ChiTietHH();
			c[i].nhapChiTiet();
		}
		sc.close();
	}
	public void inHD() {
		System.out.println("Ma so hoa don: "+MaSoHD);
		System.out.println("Noi dung hoa don: "+NoiDungHD);
		System.out.println("Ngay lap hoa don: "+NgayLapHD);
		System.out.println("So luong chi tiet hang hoa: "+SoLuongCT);
		for(int i=0;i<SoLuongCT;i++) {
			System.out.println("+  Thong tin hang hoa thu "+(i+1)+": ");
			c[i].inChiTiet();
		}
	}
	@Override
	public String toString() {
		String t="";
		t+="Ma so hoa don: "+MaSoHD+"\n";
		t+="Noi dung hoa don: " +NoiDungHD+"\n";
		t+="Ngay lap hoa don: "+NgayLapHD+"\n";
		t+="So luong chi tiet hang hoa: "+SoLuongCT+"\n";
		for(int i=0;i<SoLuongCT;i++) {
			t+="+  Thong tin hang hoa thu "+(i+1)+": "+c[i]+"\n";
		}
		return t;
	}
}
