package services;

import dataaccess.RoleDB;
import java.util.List;
import models.Role;

public class RoleService {
   
    
    public List<Role> getAll(String email) throws Exception {
        RoleDB roleDB = new RoleDB();
        List<Role> roles = roleDB.getAll(email);
        return roles;
    }
}