//
//  Student.swift
//  C0727631_MidTerm_MADT2018
//
//  Created by MacStudent on 2018-02-28.
//  Copyright © 2018 MADT - Romulo Moura. All rights reserved.
//

import UIKit

class Student
{
    
    var studentId: Int!
    var studentName: String!
    var studentGender:String!
    var studentCourse:String!
    var studentEmail:String!
    var studentBirthDate:String!
    var studentMarks:Int! //[Int:String]
    var studentPercent:Double
    var studentTotalMarks:Double
    var studentGrade:Double
    
       private static var studentList = [Int:Student]()
        
        init()
        {
            
            self.studentId = -1
            self.studentName = ""
            self.studentGender = ""
            self.studentCourse = ""
            self.studentEmail = ""
            self.studentBirthDate = ""
            self.studentMarks = 0 //[0:""]
            self.studentPercent = 0.00
            self.studentTotalMarks = 0.00
            self.studentGrade = 0.00
            
        }
        
    init(_ studentId: Int, _ studentName: String, _ studentGender:String, _ studentCourse:String, _ studentEmail:String, _ studentBirthDate:String, _ studentMarks:Int, _ studentPercent:Double, _ studentTotalMarks:Double, _ studentGrade:Double)
        {
            
            
            self.studentId = studentId
            self.studentName = studentName
            self.studentGender = studentGender
            self.studentCourse = studentCourse
            self.studentEmail = studentEmail
            self.studentBirthDate = studentBirthDate
            self.studentMarks = studentMarks
            self.studentPercent = studentPercent
            self.studentTotalMarks = studentTotalMarks
            self.studentGrade = studentGrade
            
        }
    
      static func addStudent(std: Student) -> Bool
      {
        
           if self.studentList[std.studentId] == nil
           {
              self.studentList[std.studentId] = std
              return true
            }
            return false
       }
    
            
        static func getAllStudent() -> [Int:Student] {
            return studentList
        }
        
    
        
        
}


