/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ushahidi.smssync.install;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Properties;

/**
 *
 * @author bulivaa
 */
public class Install
{

    public boolean createSchema(String dbName, String dbHost, String dbPort,
            String dbUser, String dbPassword)
    {
        
        OutputStream output = null;
        
        try
        {

            output = new FileOutputStream("smssync.properties");

            // set the properties value
            Properties defaultProps = new Properties();
            defaultProps.setProperty("database", "localhost");
            defaultProps.setProperty("dbuser", "mkyong");
            defaultProps.setProperty("dbpassword", "password");

            // save properties to project root folder
            defaultProps.store(output, null);

            output.close();

            return true;
        }
        catch (IOException io)
        {
            io.printStackTrace();
            return false;
        }
        finally
        {
            if (output != null)
            {
                try
                {
                    output.close();
                }
                catch (IOException e)
                {
                    e.printStackTrace();
                }
            }
        }
    }
}
