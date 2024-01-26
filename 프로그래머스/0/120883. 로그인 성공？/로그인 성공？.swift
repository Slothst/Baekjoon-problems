import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    var idCnt = false
    var pwCnt = false
    
    for i in db { 
        if id_pw[0] == i[0] && id_pw[1] == i[1] {
            return "login"
        }
        else if id_pw[0] == i[0] && id_pw[1] != i[1] {
            return "wrong pw"
        }
    }
    
    return "fail"
}