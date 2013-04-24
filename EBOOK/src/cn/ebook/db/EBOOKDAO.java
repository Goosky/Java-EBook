package cn.ebook.db;

import java.sql.*;
import java.util.ArrayList;

import javax.sql.*;

import javax.naming.InitialContext;
import javax.naming.NamingException;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import cn.ebook.book.BOOK;
import cn.ebook.book.BookClass;
import cn.ebook.book.BookDiscussion;
import cn.ebook.login.User;


public class EBOOKDAO {

	private DataSource datasource;
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	//��ʼ������Դ����
	public EBOOKDAO(){
		InitialContext ctx;
		try {
			ctx= new InitialContext();
			datasource = (DataSource)ctx.lookup("java:comp/env/jdbc/ebook");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//datasource����Դ��ȡ
	public DataSource getDataSource(){
		return datasource;
	}
	//���ݿ����
	//�û���¼
	public int Login(User user){
		int result = 0;
		try {
			conn = getDataSource().getConnection();/*
			  System.out.println(user.getUsername());
			  System.out.println(user.getPassword());*/
			String sql = "select * from user where (username = '"+user.getUsername()+"' and password = md5('"+user.getPassword()+"'));";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			//����ĵط�
			/* System.out.println("here");
		    System.out.println(rs.next());*/
		    if(rs.next()){
		    	 // �ҵ��û���Ϣ������
		    	String signal = rs.getString("ADMIN");
		    	if(signal.equals("Y")){
		    		result = 2;
		    	}
		    	else{
		    		result = 1;
		    	}
		    }
		    else{
		    	result = 0;//δ�ҵ��û����ؼ�
		    	//return flag;
		    	//System.out.println("2"+flag);
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
			
		}
		//System.out.println("3"+flag);
		return result;
	}
	//�û�ע��
	public int Signup(User user){
		int result = 0;	
		try {
			conn = getDataSource().getConnection();
			String sql = "insert into user values ('"+user.getUsername()+"',md5('"+user.getPassword()+"'),'N');";
   		    stmt = conn.createStatement();
//			System.out.println("username"+user.getUsername());
//			System.out.println("password"+user.getPassword());
			result = stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
		}
		return result;
	}
	
	//���ͼ�����
	public int addbookclass(BookClass bookclass){
		int result = 0;
		try {
			conn = getDataSource().getConnection();
			stmt = conn.createStatement();
			String sql = "insert into bookclass values('"+bookclass.getBookclass()+"','"+bookclass.getUsername()+"')";
			result = stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
		}
		return result;
	}
	
	//��ȡͼ�����
	public ArrayList getbookclass(String username){
		ArrayList list = new ArrayList();
		try {
			conn = getDataSource().getConnection();
			stmt = conn.createStatement();
			String sql = "select * from bookclass where username = '"+username+"';";
			rs = stmt.executeQuery(sql);
			rs.beforeFirst();
			while(rs.next()){
				BookClass bookclass = new BookClass();
				System.out.println(rs.getString(1));
				bookclass.setBookclass(rs.getString(1));
				list.add(bookclass);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
		}
		return list;
	}
	
	//���ͼ��
	public int addbook(BOOK book,String username){
		int result = 0;
		try {
			conn = getDataSource().getConnection();
			stmt = conn.createStatement();
		    String sql = "insert into book values('"+book.getBookname()+"','"
			+book.getAuthor()+"','"+book.getBookclass()+"','"+book.getPublishdate()
			+"','"+book.getDescription()+"','"+book.getDiscussiontitle()+"',now(),'"+book.getDiscussion()+"','"+username+"')";		
		System.out.println("here 1");	
		result = stmt.executeUpdate(sql);
		System.out.println("here 2");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e);
		}
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
		}
		return result;
	}
	//��ȡͼ��
	public ArrayList getBooks(String username){
		ArrayList list = new ArrayList();
		try {
			conn = getDataSource().getConnection();
			stmt = conn.createStatement();
			String sql = "select * from book where username = '"+username+"' order by publishdate desc";
			rs = stmt.executeQuery(sql);
			rs.beforeFirst();
			while(rs.next()){
				BOOK book = new BOOK();
				book.setBookname(rs.getString(1));	//ͼ������
				book.setAuthor(rs.getString(2));	//����
				book.setBookclass(rs.getString(3));// ���
				book.setPublishdate(rs.getString(4));//��������
				book.setDescription(rs.getString(5));//����
				list.add(book);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
		}
		return list;
	}
	//��ȡbook������Ϣ
	public ArrayList GetMoreBookinfo(String username){
		ArrayList list = new ArrayList();
		try {
			conn = getDataSource().getConnection();
			stmt = conn.createStatement();
			String sql = "select * from bookdiscussion where username = '"+username+"'";
			rs = stmt.executeQuery(sql);
			rs.beforeFirst();
			while(rs.next()){
				BookDiscussion bkd = new BookDiscussion();
				bkd.setBookname(rs.getString(1));
				bkd.setDiscussiontitle(rs.getString(2));
				bkd.setDiscussioncontent(rs.getString(3));
				bkd.setUsername(rs.getString(4));
				list.add(bkd);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
		}
		return list;
	}
	//ɾ��ͼ��
	public int DeleteBook(String username,String bookname){
		int result = 0;
			try {
			conn = getDataSource().getConnection();
			stmt = conn.createStatement();
			String sql = "delete from book where ( username = '"+username+"' and bookname = '"+bookname+"')";
			result = stmt.executeUpdate(sql);
			String callsql = "call deletedicussion('"+bookname+"','"+username+"')";
			stmt.executeUpdate(callsql);
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
		}
		return result;
	}
	//ɾ��ͼ�����
	public int DeleteBookClass(String username,String bookclass){
		int result = 0;
			try {
			conn = getDataSource().getConnection();
			stmt = conn.createStatement();
			String sql = "delete from bookclass where ( username = '"+username+"' and class = '"+bookclass+"')";
			result = stmt.executeUpdate(sql);
			String callsql = "call deletebook('"+bookclass+"',md5('"+username+"'))";
			stmt.executeUpdate(callsql);
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
		}
		return result;
	}
	//���ͼ������
	public int AddDiscussion(BookDiscussion bookds){
		int result = 0;
			try {
			conn = getDataSource().getConnection();
			stmt = conn.createStatement();
			String sql = "insert into bookdiscussion values('"+bookds.getBookname()+"','"+bookds.getDiscussiontitle()+"',now(),'"+bookds.getDiscussioncontent()+"','"+bookds.getUsername()+"')";
			result = stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
		}
		return result;
	}
	//////////////////////////////////////////
	//��ܹ������
	//ɾ���û�
	public int DeleteUser(String user){
		int result = 0;
			try {
			conn = getDataSource().getConnection();
			stmt = conn.createStatement();
			//String sql = "delete from user where username = '"+user+"'";
			String sql = "call deleteuser('"+user+"')";
			result = stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
		}
		return result;
	}
	//�����û�
	public int SetUserAdmin(String user){
		int result = 0;
		String signal = null;
		String updatesql = null;
		try {
			conn = getDataSource().getConnection();
			stmt = conn.createStatement();
			String sql = "select * from user where username = '"+user+"'";
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				signal = rs.getString("ADMIN");
			//	System.out.println(signal);
				if(signal.equals("Y")){
					updatesql = "update user set ADMIN = 'N' where username = '"+user+"'";
					result = stmt.executeUpdate(updatesql);
				}
				else{
					updatesql = "update user set ADMIN = 'Y' where username = '"+user+"'";
					result = stmt.executeUpdate(updatesql);
				}
			}
			else{
				result = 0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
		}
		return result;
	}
	//�޸��û�����
	public int SetUserPw(String user,String pw){
		int result = 0;
			try {
			conn = getDataSource().getConnection();
			stmt = conn.createStatement();
			String sql = "update user set password = md5('"+pw+"') where username = '"+user+"'";
			result = stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
		}
		return result;
	}
	//ɾ������
	public int DeleteDiscussion(String user,String title){
		int result = 0;
			try {
			conn = getDataSource().getConnection();
			stmt = conn.createStatement();
			String sql = "delete from bookdiscussion where ( username = '"+user+"' and DISCUSSIONTITLE = '"+title+"')";
			result = stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(conn);
		}
		return result;
	}
	//�ر�ResultSet����
	public void closeResultSet(ResultSet rs){
		if(rs != null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			rs = null;
		}
	}
	//�ر�PreparedStatement����
	public void closePreparedStatement(PreparedStatement pstmt){
		if(pstmt != null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			pstmt = null;
		}
	}
	
	//�ر�Statement����
	public void closeStatement(Statement stmt){
		if(stmt != null){
			try {
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			stmt = null;
		}
	}
	//�ر�Connection����
	public void closeConnection(Connection conn){
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			conn = null;
		}
	}
}
