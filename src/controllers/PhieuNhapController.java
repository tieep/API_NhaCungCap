/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import dto.PhieuNhapDTO;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

public class PhieuNhapController {

    public List<PhieuNhapDTO> getPhieuNhapList() {
        List<PhieuNhapDTO> phieuNhapList = null;
        try {
            // URL của API
            String apiUrl = "http://localhost:8080/api/list-phieu-nhap"; // Thay đổi port nếu cần

            // Tạo kết nối HTTP
            URL url = new URL(apiUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "application/json");

            // Kiểm tra phản hồi từ API
            if (conn.getResponseCode() != 200) {
                throw new RuntimeException("Failed : HTTP Error code : " + conn.getResponseCode());
            }

            // Đọc phản hồi JSON từ API
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            StringBuilder response = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                response.append(line);
            }
            conn.disconnect();

            // Chuyển chuỗi JSON thành danh sách đối tượng
            ObjectMapper objectMapper = new ObjectMapper();
            objectMapper.registerModule(new JavaTimeModule()); // Đăng ký module để hỗ trợ LocalDate
            phieuNhapList = objectMapper.readValue(response.toString(), new TypeReference<List<PhieuNhapDTO>>() {});
        } catch (Exception e) {
            e.printStackTrace();
        }
        return phieuNhapList;
    }
}
