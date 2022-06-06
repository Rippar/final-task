package com.epam.jwd.webproject.dao.impl;

import com.epam.jwd.webproject.dao.UserDAO;
import com.epam.jwd.webproject.pool.ConnectionPoolException;
import com.epam.jwd.webproject.pool.PoolProvider;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAOImpl implements UserDAO {

    private final static String SELECT_LOGIN_PASSWORD = "SELECT password FROM users WHERE email = ?";
    @Override
    public boolean authentication(String login, String password) {
        PoolProvider poolProvider = PoolProvider.getInstance();
        boolean result = false;
        try (Connection connection = poolProvider.getConnectionPool().takeConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_LOGIN_PASSWORD)) {

            preparedStatement.setString(1, login);
            ResultSet resultSet = preparedStatement.executeQuery();
            String passFromDB;
            if(resultSet.next()) {
                passFromDB = resultSet.getString(1);
                result = passFromDB.equals(password);
            }
        } catch (SQLException | ConnectionPoolException e) {
            //заменить на что-то умнее
            e.printStackTrace();
        }

        return result;

    }

}
