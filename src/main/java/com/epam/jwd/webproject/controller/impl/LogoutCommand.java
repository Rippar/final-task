package com.epam.jwd.webproject.controller.impl;

import com.epam.jwd.webproject.controller.Command;
import jakarta.servlet.http.HttpServletRequest;

public class LogoutCommand implements Command {
    @Override
    public String execute(HttpServletRequest request) {
        return null;
    }
}
