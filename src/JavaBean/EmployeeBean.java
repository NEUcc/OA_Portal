package JavaBean; /**
 * Created by Haibara on 25/04/2017.
 */
public class EmployeeBean {
    private int id;
    private String name;
    private String department; // pay attention to this
    private int age;
    private String sex;
    private String position;
    private long phonenumber;
    private String email;


     public EmployeeBean(){

    }

    public EmployeeBean(int id, String name, String department, int age, String sex, String position,
                 long phonenumber, String email)
    {
        this.id = id;
        this.name = name;
        this.department = department;
        this.age = age;
        this.sex = sex;
        this.position = position;
        this.phonenumber = phonenumber;
        this.email = email;
    }
    public int getId(){
        return this.id;
    }

    public String getName(){
        return this.name;
    }

    public String getDepartment(){
        return this.department;
    }

    public int getAge() {
        return this.age;
    }

    public String getSex() {
        return this.sex;
    }

    public String getPosition() {
        return this.position;
    }

    public long getPhonenumber() {
        return phonenumber;
    }

    public String getEmail() {
        return email;
    }


}
