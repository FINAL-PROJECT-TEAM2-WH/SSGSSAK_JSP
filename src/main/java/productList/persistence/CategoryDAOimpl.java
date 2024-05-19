package productList.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import productList.domain.AllCateDTO;
import productList.domain.CurrentCateDTO;
import productList.domain.MajorCateDTO;
import productList.domain.MiddleCateDTO;
import productList.domain.MiniCateDTO;
import productList.domain.SubCateDTO;

public class CategoryDAOimpl implements CategoryDAO {

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public Connection getConn() {
		return conn;
	}
	public void setConn(Connection conn) {
		this.conn = conn;
	}
	public CategoryDAOimpl(Connection conn) {
		this.conn = conn;
	}
	@Override
	public AllCateDTO selectCate(String categoryId) throws SQLException {
		System.out.println("selectCate 실행됨");
		AllCateDTO acDTO = null;		
		ArrayList<MajorCateDTO> 	mjcDtoList=null;
		ArrayList<MiddleCateDTO> 	mdcDtoList=null;
		ArrayList<SubCateDTO>	 	scDtoList=null; 
		ArrayList<MiniCateDTO> 		mncDtoList=null;
		CurrentCateDTO 				crtCateDto=null;
		
		
		String id;            
		String majorCateName;
		String middleCateName;
		String subCateName;
		String miniCateName;

		

		
		String mjcSql = " SELECT DISTINCT majorCateName, id "
				+ " FROM category "
				+ " WHERE id LIKE '%000000' "
				+ " AND majorCateName IS NOT NULL ";
		try {
			pstmt = conn.prepareStatement(mjcSql); 
			rs = pstmt.executeQuery();

			if (rs.next()) {
				mjcDtoList = new ArrayList<MajorCateDTO>();
				MajorCateDTO dto = null;
				do {
					majorCateName= rs.getString(1);
					id= rs.getString(2);   

					dto = new MajorCateDTO()
							.builder()
							.id(id)
							.majorCateName(majorCateName)
							.build();
					mjcDtoList.add(dto);
					System.out.println("mjcDtoList에 대카테정보담아짐");
				} while (rs.next());

			} // if 


		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("여기서 오류뜨면 mjcDtoList에 담기는게 안되는거임");
		} finally {
			try {
				JdbcUtil.close(rs);
				JdbcUtil.close(pstmt);
			} catch (Exception e2) {
				System.out.println(" mjcDtoList 닫기실패");
			}
		}

		
		
		String mdcSql = " SELECT DISTINCT middleCateName, id "
				+ " FROM category "
				+ " WHERE id LIKE SUBSTR(?, 1, 2) || '%0000' "
				+ " AND middleCateName IS NOT NULL ";
		try {
			pstmt = conn.prepareStatement(mdcSql); 
			pstmt.setString(1, categoryId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				mdcDtoList = new ArrayList<MiddleCateDTO>();
				MiddleCateDTO dto = null;
				do {
					middleCateName= rs.getString(1);    
					id= rs.getString(2);    


					dto = new MiddleCateDTO()
							.builder()
							.id(id)
							.middleCateName(middleCateName)
							.build();
					mdcDtoList.add(dto);
					System.out.println("mdcDtoList에 중카테정보담아짐");
				} while (rs.next());

			} // if 


		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("여기서 오류뜨면 mdcDtoList에 담기는게 안되는거임");
		} finally {
			try {
				JdbcUtil.close(rs);
				JdbcUtil.close(pstmt);
			} catch (Exception e2) {
				System.out.println(" mdcDtoList 닫기실패");
			}
		}
		
		
		



		String scSql = " SELECT DISTINCT subCateName, id "
				+ " FROM category "
				+ " WHERE id LIKE SUBSTR(?, 1, 4) || '%00' "
				+ " AND subCateName IS NOT NULL ";
		try {
			pstmt = conn.prepareStatement(scSql); 
			pstmt.setString(1, categoryId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				scDtoList = new ArrayList<SubCateDTO>();
				SubCateDTO dto = null;
				do {
					subCateName= rs.getString(1);    
					id= rs.getString(2);    


					dto = new SubCateDTO()
							.builder()
							.id(id)
							.subCateName(subCateName)
							.build();
					scDtoList.add(dto);
					System.out.println("scDtoList에 소카테정보담아짐");
				} while (rs.next());

			} // if 


		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("여기서 오류뜨면 scDtoList에 담기는게 안되는거임");
		} finally {
			try {
				JdbcUtil.close(rs);
				JdbcUtil.close(pstmt);
			} catch (Exception e2) {
				System.out.println(" scDtoList 닫기실패");
			}
		}


		String mncSql = " SELECT DISTINCT miniCateName, id "
				+ " FROM category "
				+ " WHERE id LIKE SUBSTR(?, 1, 6) || '%' "
				+ " AND miniCateName IS NOT NULL ";
		try {
			pstmt = conn.prepareStatement(mncSql); 
			pstmt.setString(1, categoryId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				mncDtoList = new ArrayList<MiniCateDTO>();
				MiniCateDTO dto = null;
				do {
					miniCateName= rs.getString(1);    
					id= rs.getString(2);    


					dto = new MiniCateDTO()
							.builder()
							.id(id)
							.miniCateName(miniCateName)
							.build();
					mncDtoList.add(dto);
					System.out.println("mncDtoList에 최소카테정보담아짐");
				} while (rs.next());

			} // if 


		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("여기서 오류뜨면 mncDtoList에 담기는게 안되는거임");
		} finally {
			try {
				JdbcUtil.close(rs);
				JdbcUtil.close(pstmt);
			} catch (Exception e2) {
				System.out.println(" mncDtoList 닫기실패");
			}
		}


		
		
		
		
		
		
		String crtCateSql = " SELECT * "
						  + " FROM category "
						  + " WHERE id = ? ";
		try {
			pstmt = conn.prepareStatement(crtCateSql); 
			pstmt.setString(1, categoryId);
			rs = pstmt.executeQuery();

			if (rs.next()) {

				
				
				id= rs.getString(1);    
				majorCateName= rs.getString(2);    
				middleCateName= rs.getString(3);    
				subCateName= rs.getString(4);    
				miniCateName= rs.getString(5);    


				crtCateDto = new CurrentCateDTO()
							.builder()
							.id(id)
							.majorCateName(majorCateName)
							.middleCateName(middleCateName)
							.subCateName(subCateName)
							.miniCateName(miniCateName)
							.build();
					
					System.out.println("crtCateDto에 현재카테고리 담아짐");

			} // if 


		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("여기서 오류뜨면 crtCateDto에 담기는게 안되는거임");
		} finally {
			try {
				JdbcUtil.close(rs);
				JdbcUtil.close(pstmt);
			} catch (Exception e2) {
				System.out.println("crtCateDto 닫기실패");
			}
		}



		acDTO = new AllCateDTO()
				.builder()
				.mjcDtoList(mjcDtoList)
				.mdcDtoList(mdcDtoList)
				.scDtoList(scDtoList)
				.mncDtoList(mncDtoList)
				.crtCateDto(crtCateDto)
				.build();


		System.out.println("mjcDtoList:");
		if (mjcDtoList != null) {
			for (MajorCateDTO dto : mjcDtoList) {
				System.out.println(dto.getId() + " - " + dto.getMajorCateName());
			}
		}
		
		System.out.println("mdcDtoList:");
		if (mdcDtoList != null) {
			for (MiddleCateDTO dto : mdcDtoList) {
				System.out.println(dto.getId() + " - " + dto.getMiddleCateName());
			}
		}

		System.out.println("scDtoList:");
		if (scDtoList != null) {
			for (SubCateDTO dto : scDtoList) {
				System.out.println(dto.getId() + " - " + dto.getSubCateName());
			}
		}

		System.out.println("mncDtoList:");
		if (mncDtoList != null) {
			for (MiniCateDTO dto : mncDtoList) {
				System.out.println(dto.getId() + " - " + dto.getMiniCateName());
			}
		}
	
		System.out.println("crtCateDto:");
		if (crtCateDto != null) {
			System.out.println(crtCateDto.getId() + " - " + crtCateDto.getMajorCateName() + " - " 
							   + crtCateDto.getMiddleCateName() + " - " + crtCateDto.getSubCateName() + " - " 
							   + crtCateDto.getMiniCateName());
		}
		
		
		return acDTO;
	}//selectCate


}
