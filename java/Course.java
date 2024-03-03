

public class Course {

    private Integer course_id ;
    private String coursename;

    /**
     * Constructor to create Course object with course_id, studentname
     * @param course_id student_id of student
     * @param coursename studentname of student
     */
    public Course(Integer course_id, String studentname) {
            this.course_id = course_id ;
            this.coursename = coursename;
    }

    /* Getters */
    public Integer getCourseID() {return this.course_id;}
    public String getCourseName() {return this.coursename;}

    /* Setters */
    public void setCourseID(int course_id) {this.course_id = course_id ;}
    public void setCourseName(String coursename) {this.coursename = coursename;}

    @Override
    public String toString() {
        return "<ul>"
            + "<li>course= " + course_id + "</li>"
            + "<li>course= " + coursename + "</li>";
    }
}
