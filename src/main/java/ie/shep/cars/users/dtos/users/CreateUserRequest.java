package ie.shep.cars.users.dtos;

import java.util.UUID;

public record CreateUserRequest(
        String email,
        String password,
        String firstName,
        String lastName,
        UUID addressId
) {
}

