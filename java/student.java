

public class Student {

    private Integer student_id ;
    private String studentemail;
    private String studentpassword;
    private String studentname;


    /**
     * Constructor to create Student object with student_id, studentemail, studentpassword,
     * studentname
     *
     * @param student_id student_id of student
     * @param studentemail studentname of student
     * @param studentpassword studentpassword of student
     * @param studentname studentname of student
     */
    public Student(Integer student_id, String studentemail, String studentpassword,
        String studentname) {
            this.student_id = student_id ;
            this.studentemail = studentemail;
            this.studentpassword = studentpassword;
            this.studentname = studentname;
    }

    /* Getters */
    public Integer getStudentID() {return this.student_id;}
    public String getStudentEmail() {return this.studentemail;}
    public String getStudentPassword() {return this.studentpassword;}
    public String getStudentName() {return this.studentname;}

    /* Setters */
    public void setStudentID(int student_id) {this.student_id = student_id ;}
    public void setStudentEmail(String studentemail) {this.studentemail = studentemail;}
    public void setStudentPassword(String studentpassword) {this.studentpassword = studentpassword;}
    public void setStudentName(String studentname) {this.studentname = studentname;}

    @Override
    public String toString() {
        return "<ul>"
            + "<li>student= " + studentname + "</li>"
            + "<li>student= " + studentemail + "</li>";
    }
}
