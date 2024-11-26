package test;

import gui.LoginGUI;
import API.API_Server;
import controllers.CTPhieuNhapController;
import dto.CTPhieuNhapDTO;
import java.io.IOException;
import java.util.List;
public class Test {
    public static void main(String[] args) {
        new Thread(() -> {
            try {
                new API_Server(8080); // API chạy trên cổng 8080
            } catch (IOException e) {
                e.printStackTrace();
            }
        }).start();
        new LoginGUI();
        
        CTPhieuNhapController controller = new CTPhieuNhapController();
        List<CTPhieuNhapDTO> ctpnList = controller.getCTPhieuNhapList();
        if(ctpnList != null) {
            for(CTPhieuNhapDTO ct : ctpnList) {
                System.out.println(ct.getIdPhieuNhap());
            }
        }

    }
}
