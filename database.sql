-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 ;
USE `mydb`;

-- -----------------------------------------------------
-- Table `mydb`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`student` (
  `studentID` INT NOT NULL,
  `studentEmail` VARCHAR(50) NOT NULL,
  `Studentpassword` VARCHAR(50) NOT NULL,
  `studentName` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`course` (
  `CourseID` INT NOT NULL,
  `CourseName` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`studygroup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`studygroup` (
  `SGID` INT NOT NULL,
  `SGName` VARCHAR(50) NOT NULL,
  `SGWeekDay` VARCHAR(50) NOT NULL,
  `SGTime` Time(6) NOT NULL,
  `SGLocation` VARCHAR(50) NOT NULL,
  `OwnerID` INT NOT NULL,
  `course_CourseID` INT NOT NULL,
  PRIMARY KEY (`SGID`),
  INDEX `fk_studygroup_owner_idx` (`OwnerID`),
  INDEX `fk_studygroup_course_idx` (`course_CourseID`),
  CONSTRAINT `fk_studygroup_student`
    FOREIGN KEY (`OwnerID`)
    REFERENCES `mydb`.`student` (`studentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_studygroup_course`
    FOREIGN KEY (`course_CourseID`)
    REFERENCES `mydb`.`course` (`CourseID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`studentcourses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`studentcourses` (
  `course_CourseID` INT NOT NULL,
  `student_studentID` INT NOT NULL,
  PRIMARY KEY (`course_CourseID`, `student_studentID`),
  INDEX `fk_studentcourses_student_idx` (`student_studentID`),
  CONSTRAINT `fk_studentcourses_course`
    FOREIGN KEY (`course_CourseID`)
    REFERENCES `mydb`.`course` (`CourseID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_studentcourses_student`
    FOREIGN KEY (`student_studentID`)
    REFERENCES `mydb`.`student` (`studentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`studentstudygroup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`studentstudygroup` (
  `student_studentID` INT NOT NULL,
  `studygroup_SGID` INT NOT NULL,
  PRIMARY KEY (`student_studentID`, `studygroup_SGID`),
  INDEX `fk_studentstudygroup_studygroup_idx` (`studygroup_SGID`),
  CONSTRAINT `fk_studentstudygroup_student`
    FOREIGN KEY (`student_studentID`)
    REFERENCES `mydb`.`student` (`studentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_studentstudygroup_studygroup`
    FOREIGN KEY (`studygroup_SGID`)
    REFERENCES `mydb`.`studygroup` (`SGID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB;
