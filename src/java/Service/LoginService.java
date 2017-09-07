/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

/**
 *
 * @author zoroskid
 */
public class LoginService {
    
    public boolean authenticate(String userID, String password)
    {
        if (password == null || password.trim() == "") {
            return false;
        }
        return true;
    }
}
