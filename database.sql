-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`student` (
  `STUDENT_ID` INT NOT NULL  AUTO_INCREMENT,
  `STUDENT_EMAIL` VARCHAR(50) NOT NULL,
  `STUDENT_PASSWORD` VARCHAR(50) NOT NULL,
  `STUDENT_NAME` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`STUDENT_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`course` (
  `COURSE_ID` INT NOT NULL  AUTO_INCREMENT,
  `COURSE_NAME` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`COURSE_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`studygroup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`studygroup` (
  `SG_ID` INT NOT NULL AUTO_INCREMENT,
  `SG_NAME` VARCHAR(50) NOT NULL,
  `SG_WEEKDAY` VARCHAR(50) NOT NULL,
  `SG_TIME` VARCHAR(50) NOT NULL,
  `SG_LOCATION` VARCHAR(50) NOT NULL,
  `OWNER_ID` INT NOT NULL,
  `COURSE_ID` INT NOT NULL,
  PRIMARY KEY (`SG_ID`),
  INDEX `fk_student group_student1_idx` (`OWNER_ID` ASC) VISIBLE,
  INDEX `fk_studygroup_course1_idx` (`COURSE_ID` ASC) VISIBLE,
  CONSTRAINT `fk_student group_student1`
    FOREIGN KEY (`OWNER_ID`)
    REFERENCES `mydb`.`student` (`STUDENT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_studygroup_course1`
    FOREIGN KEY (`COURSE_ID`)
    REFERENCES `mydb`.`course` (`COURSE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`studentcourses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`studentcourses` (
  `COURSE_ID` INT NOT NULL ,
  `STUDENT_ID` INT NOT NULL,
  PRIMARY KEY (`COURSE_ID`, `STUDENT_ID`),
  INDEX `fk_studentcourses_student1_idx` (`STUDENT_ID` ASC) VISIBLE,
  CONSTRAINT `fk_studentcourses_course`
    FOREIGN KEY (`COURSE_ID`)
    REFERENCES `mydb`.`course` (`COURSE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_studentcourses_student1`
    FOREIGN KEY (`STUDENT_ID`)
    REFERENCES `mydb`.`student` (`STUDENT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`studentstudygroup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`studentstudygroup` (
  `STUDENT_ID` INT NOT NULL,
  `SG_ID` INT NOT NULL,
  PRIMARY KEY (`STUDENT_ID`, `SG_ID`),
  INDEX `fk_studentstudygroup_student group1_idx` (`SG_ID` ASC) VISIBLE,
  CONSTRAINT `fk_studentstudygroup_student1`
    FOREIGN KEY (`STUDENT_ID`)
    REFERENCES `mydb`.`student` (`STUDENT_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_studentstudygroup_student group1`
    FOREIGN KEY (`SG_ID`)
    REFERENCES `mydb`.`studygroup` (`SG_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;




-- Now, you can insert new records safely

-- Insert students
INSERT INTO `mydb`.`student` (`STUDENT_ID`, `STUDENT_EMAIL`, `STUDENT_PASSWORD`, `STUDENT_NAME`) VALUES
(1, 'student1@example.com', 'pass1234', 'Student One'),
(2, 'student2@example.com', 'pass5678', 'Student Two'),
(3, 'student3@example.com', 'pass91011', 'Student Three');


-- Insert courses
INSERT INTO `mydb`.`course` (`COURSE_ID`, `COURSE_NAME`) VALUES
(101, 'Introduction to Programming'),
(102, 'Database Systems'),
(103, 'Web Development');


-- Insert study groups
INSERT INTO `mydb`.`studygroup` (`SG_ID`, `SG_NAME`, `SG_WEEKDAY`, `SG_TIME`, `SG_LOCATION`, `OWNER_ID`, `COURSE_ID`) VALUES
(201, 'Intro Programming Group', 'Monday', '18:00', 'Room 101', 1, 101),
(202, 'Database Masters', 'Wednesday', '20:00', 'Room 102', 2, 102),
(203, 'Web Dev Warriors', 'Friday', '17:00', 'Online', 3, 103);

-- Associate students with courses
INSERT INTO `mydb`.`studentcourses` (`COURSE_ID`, `STUDENT_ID`) VALUES
(101, 1),
(102, 1),
(103, 1),
(102, 2),
(103, 3);

-- Associate students with study groups
INSERT INTO `mydb`.`studentstudygroup` (`STUDENT_ID`, `SG_ID`) VALUES
(1, 201),
(1, 202),
(2, 202),
(3, 203);




