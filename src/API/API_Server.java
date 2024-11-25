/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package API;

/**
 *
 * @author hp
 */
import fi.iki.elonen.NanoHTTPD;
import java.io.IOException;
import java.util.ArrayList;
import dto.PhieuNhapDTO;
import dao.PhieuNhapDAO;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.net.ServerSocket;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
public class API_Server extends NanoHTTPD {

   public API_Server(int port) throws IOException {
        super(port);
        
        // Kiểm tra xem cổng đã được sử dụng chưa
        if (isPortInUse(port)) {
            throw new IOException("Port " + port + " is already in use. Could not start the server.");
        }
        
        start(SOCKET_READ_TIMEOUT, false); // Khởi chạy server
        System.out.println("API server started on port " + port);
    }

    // Kiểm tra cổng có đang sử dụng không
    private boolean isPortInUse(int port) {
        try (ServerSocket serverSocket = new ServerSocket(port)) {
            return false; // Cổng chưa bị chiếm dụng
        } catch (IOException e) {
            return true; // Cổng đã bị chiếm dụng
        }
    }

    @Override
    public Response serve(IHTTPSession session) {
        // Lấy URI (đường dẫn) của yêu cầu
        String uri = session.getUri();
        String method = session.getMethod().name(); // Phương thức HTTP (GET, POST, v.v.)

        // Xử lý các API khác nhau
        if ("/api/list-phieu-nhap".equals(uri)) {
            if ("GET".equals(method)) {
                PhieuNhapDAO pnDAO = new PhieuNhapDAO();
                ArrayList<PhieuNhapDTO> pnList = pnDAO.list();
                ObjectMapper objectMapper = new ObjectMapper();
                objectMapper.registerModule(new JavaTimeModule()); // PhieuNhapDTO có dùng LocalDate, khong co LocalDate thi khong can dong nay
                String jsonResponse = "";
                try {
                    jsonResponse = objectMapper.writeValueAsString(pnList);
                } catch (IOException e) {
                    e.printStackTrace();
                    return newFixedLengthResponse(Response.Status.INTERNAL_ERROR, "text/plain", "500 Internal Server Error");
                }
                return newFixedLengthResponse(Response.Status.OK, "application/json", jsonResponse);
            }
        } else if ("/api/list-bao-hanh".equals(uri)) {
            if ("GET".equals(method)) {
                String jsonResponse = "{\"info\": \"This is some information from the API.\"}";
                return newFixedLengthResponse(Response.Status.OK, "application/json", jsonResponse);
            }
        }

        // Nếu không khớp với bất kỳ endpoint nào
        return newFixedLengthResponse(Response.Status.NOT_FOUND, "text/plain", "404 Not Found API");
    }

}
