package like.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

public interface LikeDAO {
	public int insLike(String memid, String id) throws SQLException;

	public int checkLike(String memid, String id) throws SQLException;

	public int cancelLike(String memid, String id) throws SQLException;
	
	public int cancelLike(ArrayList<String> productList, String id) throws SQLException;
	
	public int addFolder(String id, String folderName ) throws SQLException;

	public ArrayList<String> getFolderName(String id) throws SQLException;
}
