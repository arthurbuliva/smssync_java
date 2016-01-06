/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author bulivaa
 */
public class Test
{

    public static void main(String[] args)
    {
        Map<String, String> parameters = new HashMap<String, String>();

        parameters.put("name", "arthur");

        System.out.println(parameters.get("name"));
    }
}
