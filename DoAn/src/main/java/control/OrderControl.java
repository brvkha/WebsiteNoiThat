package control;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import dao.DAO;

import entity.Account;
import entity.Email;
import entity.EmailUtils;
import entity.Cart;
import entity.Product;
import entity.SoLuongDaBan;
import entity.TongChiTieuBanHang;

/**
 * Servlet implementation class ForgotPasswordControl
 */
@WebServlet(name = "OrderControl", urlPatterns = {"/order"})
public class OrderControl extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session = request.getSession();
	        Account a = (Account) session.getAttribute("acc");
	        if(a == null) {
	        	response.sendRedirect("login");
	        	return;
	        }
	        int accountID = a.getId();
	        DAO dao = new DAO();
	        List<Cart> list = dao.getCartByAccountID(accountID);
	        List<Product> list2 = dao.getAllProduct();
	        double totalMoney=0;
	        for(Cart c : list) {
				for(Product p : list2) {
					if(c.getProductID()==p.getId()) {
						totalMoney=totalMoney+(p.getPrice()*c.getAmount());
					}
				}
			}
	        double totalMoneyVAT=totalMoney+totalMoney*0.1;
	        
	        double tongTienBanHangThem=0;
	        int sell_ID;
	        for (Cart c : list) {
	            for (Product p : list2) {
	                if (c.getProductID() == p.getId()) {
	                    tongTienBanHangThem = 0;
	                    sell_ID = dao.getSellIDByProductID(p.getId());
	                    tongTienBanHangThem = tongTienBanHangThem + (p.getPrice() * c.getAmount());
	                    TongChiTieuBanHang t2 = dao.checkTongChiTieuBanHangExist(sell_ID);
	                    if (t2 == null) {
	                        dao.insertTongChiTieuBanHang(sell_ID, 0, tongTienBanHangThem);
	                    } else {
	                        dao.editTongBanHang(sell_ID, tongTienBanHangThem);
	                    }
	                }
	            }
	        }
	        
	        
	        for(Cart c : list) {
				for(Product p : list2) {
					if(c.getProductID()==p.getId()) {
						SoLuongDaBan s = dao.checkSoLuongDaBanExist(p.getId());
						if(s == null) {
							dao.insertSoLuongDaBan(p.getId(), c.getAmount());
						}
						else {
							dao.editSoLuongDaBan(p.getId(), c.getAmount());
						}	
					}
				}
			}
	        
	        dao.insertInvoice(accountID, totalMoneyVAT);
	        TongChiTieuBanHang t = dao.checkTongChiTieuBanHangExist(accountID);
	        if(t==null) {
	        	dao.insertTongChiTieuBanHang(accountID,totalMoneyVAT,0);
	        }
	        else {
	        	dao.editTongChiTieu(accountID, totalMoneyVAT);
	        }
	        
	        
		request.getRequestDispatcher("DatHang.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String emailAddress = request.getParameter("email");
			String name = request.getParameter("name");
			String phoneNumber = request.getParameter("phoneNumber");
			String deliveryAddress = request.getParameter("deliveryAddress");
			
			 HttpSession session = request.getSession();
		        Account a = (Account) session.getAttribute("acc");
		        if(a == null) {
		        	response.sendRedirect("login");
		        	return;
		        }
		        int accountID = a.getId();
		        DAO dao = new DAO();
		        List<Cart> list = dao.getCartByAccountID(accountID);
		        List<Product> list2 = dao.getAllProduct();
					
		        double totalMoney=0;
		        for(Cart c : list) {
					for(Product p : list2) {
						if(c.getProductID()==p.getId()) {
							totalMoney=totalMoney+(p.getPrice()*c.getAmount());
						}
					}
				}
		        double totalMoneyVAT=totalMoney+totalMoney*0.1;
		        DecimalFormat decimalFormat = new DecimalFormat("#");
		        String fullNumberString = decimalFormat.format(totalMoneyVAT);
		        
		        //old code
				Email email =new Email();
				email.setFrom("brvkha1@gmail.com"); //chinh lai email quan tri tai day [chu y dung email con hoat dong]
				email.setFromPassword("manq mzol ujkv ivzi"); //mat khau email tren
				email.setTo(emailAddress);
				email.setSubject("Đặt hàng thành công từ Cửa Hàng Nội Thất");
				StringBuilder sb = new StringBuilder();
				sb.append("Xin chào ").append(name).append("<br><br>");
				sb.append("Bạn vừa đặt hàng tại Cửa Hàng Nội Thất. <br> ");
				sb.append("Địa chỉ nhận hàng của bạn là: <b>").append(deliveryAddress).append(" </b> <br>");
				sb.append("Số điện thoại khi nhận hàng là: <b>").append(phoneNumber).append(" </b> <br>");
				sb.append("Các sản phẩm bạn đặt là: <br>");
				for(Cart c : list) {
					for(Product p : list2) {
						if(c.getProductID()==p.getId()) {
							sb.append(p.getName()).append(" | ").append("Giá:").append(p.getPrice()).append("VNĐ").append(" | ").append("Số lượng:").append(c.getAmount()).append("<br>");
						}
					}
				}
				sb.append("Tổng tiền: ").append(String.format(fullNumberString)).append("VNĐ").append("<br><br>");
				sb.append("Cảm ơn bạn đã đặt hàng tại Cửa Hàng Nội Thất<br>");
				sb.append("Chủ cửa hàng");
				
				email.setContent(sb.toString());
				EmailUtils.send(email);
				request.setAttribute("mess", "Đặt hàng thành công!");
				
				dao.deleteCartByAccountID(accountID);
				
				
				//new code
//				request.setAttribute("email", emailAddress);
//				request.getRequestDispatcher("ThongTinDatHang.jsp").forward(request, response);
				
			
		} catch (Exception e) {
			request.setAttribute("error", "Đặt hàng thất bại!");
			e.printStackTrace();
		}
	
		request.getRequestDispatcher("DatHang.jsp").forward(request, response);
	}

}
