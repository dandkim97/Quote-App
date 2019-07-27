package myApp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class QuoteDao {
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}	
	public int save(Quote q) {
		String SQL = "insert into Quote(author,message) values('"+q.getAuthor()+"','"+q.getMessage()+"')";
		return template.update(SQL);
	}
	public int update(Quote q) {
		String SQL = "update Quote set author='"+q.getAuthor()+"', message='"+q.getMessage()+"'where id="+q.getId()+"";
		return template.update(SQL);
	}
	public int delete(int id) {
		String SQL = "delete from Quote where id="+id+"";
		return template.update(SQL);
	}
	public Quote getQuoteById(int id) {
		String SQL = "select * from Quote where id=?";
		return template.queryForObject(SQL, new Object[] {id}, new BeanPropertyRowMapper<Quote>(Quote.class));
	}
	public List<Quote> getQuotes(){
		return template.query("select * from Quote",new RowMapper<Quote>() {
			public Quote mapRow(ResultSet rs, int row)throws SQLException{
				Quote q = new Quote();
				q.setId(rs.getInt(1));
				q.setAuthor(rs.getString(2));
				q.setMessage(rs.getString(3));
				return q;
			}
		});
	}
	public int createTestCases() {
		String SQL = "INSERT INTO Quote(author, message) VALUES"
				+ "('Carol Burnett','Only I can change my life. No one can do it for me.'),"
				+ "('Mark Twain', 'The secret of getting ahead is getting started.'),"
				+ "('Pablo Picasso','Every child is an artist. The problem is how to remain an artist once he grows up.'),"
				+ "('Woodrow Wilson','You are not here merely to make a living. You are here in order to enable the world to live more amply, with greater vision, with a finer spirit of hope and achievement. You are here to enrich the world, and you impoverish yourself if you forget the errand.'),"
				+ "('George Herbert','Do not wait; the time will never be just right. Start where you stand, and work with whatever tools you may have at your command, and better tools will be found as you go along.')";
		return template.update(SQL);
	}
}
