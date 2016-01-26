package examples.dao;

import java.util.List;
import java.util.Map;

import org.jeecgframework.minidao.annotation.Arguments;
import org.jeecgframework.minidao.annotation.ResultType;
import org.jeecgframework.minidao.annotation.Sql;
import org.jeecgframework.minidao.pojo.MiniDaoPage;
import org.springframework.stereotype.Repository;

import examples.entity.Employee;

@Repository
public interface EmployeeDao {

	/**
	 * 返回List<Map>类型，全部数据
	 * @param employee
	 * @return
	 */
	@Arguments({ "employee"})
	List<Map<String,Object>> getAll(Employee employee);
	
	/**
	 * 查询返回Java对象
	 * @param empno
	 * @return
	 */
	@Arguments("empno")
	Employee getEmployee(String empno);

	/**
	 * 支持多个参数，查看返回Map
	 * @param empno
	 * @param name
	 * @return
	 */
	@Arguments({ "empno", "name" })
	Map<String,Object> getMap(String empno, String name);

	/**
	 * 修改数据
	 * @param employee
	 * @return
	 */
	@Arguments("employee")
	int update(Employee employee);

	/**
	 * 插入数据
	 * @param employee
	 */
	@Arguments("employee")
	void insert(Employee employee);
	
	/**
	 * 通用分页方法，支持（oracle、mysql、SqlServer、postgresql）
	 * @param employee
	 * @param page
	 * @param rows
	 * @return
	 */
	@Arguments({ "employee", "page", "rows" })
	@ResultType(Employee.class)
	public MiniDaoPage<Employee> getAllEmployees(Employee employee, int page,int rows);
	
	@Sql("select count(*) from employee")
	Integer getCount();
}
