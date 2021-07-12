/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;

/**
 *
 * @author 816386
 */
public class Role implements Serializable {
     private String role;
     
      public Role() {
    }
     public Role( String role) {
        this.role = role;

    }
     
     @Override
    public String toString() {
        return role;
    }
}
