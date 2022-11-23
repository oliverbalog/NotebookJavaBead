package Notebook.Services;

import Notebook.Models.User;
import Notebook.Models.UserDto;

public interface RegisterUserService {

    User registerNewUserAccount(UserDto userDto) throws Exception;
}
