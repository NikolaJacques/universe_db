CREATE DATABASE universe;
CREATE TABLE galaxy(
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT
);
CREATE TABLE constellation(
    constellation_id SERIAL PRIMARY KEY,
    galaxy_id INT NOT NULL,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    lambda_one BOOLEAN,
    FOREIGN KEY (galaxy_id) REFERENCES galaxy (galaxy_id),
);
CREATE TABLE star(
    star_id SERIAL PRIMARY KEY,
    constellation_id INT NOT NULL,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    lambda_one BOOLEAN,
    FOREIGN KEY (constellation_id) REFERENCES constellation (constellation_id),
);
CREATE TABLE planet(
    planet_id SERIAL PRIMARY KEY,
    star_id INT NOT NULL,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    surface_area_sq_km INT,
    distance_sun_km INT,
    density NUMERIC,
    FOREIGN KEY (star_id) REFERENCES star (star_id)
);
CREATE TABLE moon(
    moon_id SERIAL PRIMARY KEY,
    planet_id INT NOT NULL,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    lambda_one BOOLEAN,
    FOREIGN KEY (planet_id) REFERENCES planet (planet_id)
);
INSERT INTO galaxy(name) VALUES ('Milky Way');
INSERT INTO galaxy(name) VALUES ('Black Eye Galaxy');
INSERT INTO galaxy(name) VALUES ('Circinus');
INSERT INTO galaxy(name) VALUES ('Comet Galaxy');
INSERT INTO galaxy(name) VALUES ('Hockey stick galaxy');
INSERT INTO galaxy(name) VALUES ('Needle Galaxy');
INSERT INTO constellation(name) VALUES ('Pisces', 1);
INSERT INTO constellation(name) VALUES ('Andromeda', 1);
INSERT INTO constellation(name) VALUES ('Orion', 1);
INSERT INTO star(name, constellation_id) VALUES ('Sun', 1);
INSERT INTO star(name, constellation_id) VALUES ('Alrescha', 1);
INSERT INTO star(name, constellation_id) VALUES ('Fumalsamakah', 1);
INSERT INTO star(name, constellation_id) VALUES ('Alpha Piscium', 1);
INSERT INTO star(name, constellation_id) VALUES ('Theta Piscium', 1);
INSERT INTO star(name, constellation_id) VALUES ('Omega Piscium', 1);
INSERT INTO planet(name, star_id) VALUES ('Earth', 1);
INSERT INTO planet(name, star_id) VALUES ('Mercury', 1);
INSERT INTO planet(name, star_id) VALUES ('Venus', 1);
INSERT INTO planet(name, star_id) VALUES ('Mars', 1);
INSERT INTO planet(name, star_id) VALUES ('Jupiter', 1);
INSERT INTO planet(name, star_id) VALUES ('Saturn', 1);
INSERT INTO planet(name, star_id) VALUES ('Uranus', 1);
INSERT INTO planet(name, star_id) VALUES ('Neptune', 1);
INSERT INTO planet(name, star_id) VALUES ('Ceres', 1);
INSERT INTO planet(name, star_id) VALUES ('Pluto', 1);
INSERT INTO planet(name, star_id) VALUES ('Haumea', 1);
INSERT INTO planet(name, star_id) VALUES ('Makemake', 1);
INSERT INTO moon(name, planet_id) VALUES ('Moon', 1);
INSERT INTO moon(name, planet_id) VALUES ('Io', 1);
INSERT INTO moon(name, planet_id) VALUES ('Europa', 1);
INSERT INTO moon(name, planet_id) VALUES ('Ganymede', 1);
INSERT INTO moon(name, planet_id) VALUES ('Callisto', 1);
INSERT INTO moon(name, planet_id) VALUES ('Mimas', 1);
INSERT INTO moon(name, planet_id) VALUES ('Enceladus', 1);
INSERT INTO moon(name, planet_id) VALUES ('Tethys', 1);
INSERT INTO moon(name, planet_id) VALUES ('Dione', 1);
INSERT INTO moon(name, planet_id) VALUES ('Rhea', 1);
INSERT INTO moon(name, planet_id) VALUES ('Titan', 1);
INSERT INTO moon(name, planet_id) VALUES ('Iapetus', 1);
INSERT INTO moon(name, planet_id) VALUES ('Miranda', 1);
INSERT INTO moon(name, planet_id) VALUES ('Ariel', 1);
INSERT INTO moon(name, planet_id) VALUES ('Titania', 1);
INSERT INTO moon(name, planet_id) VALUES ('Oberon', 1);
INSERT INTO moon(name, planet_id) VALUES ('Triton', 1);
INSERT INTO moon(name, planet_id) VALUES ('Charon', 1);
INSERT INTO moon(name, planet_id) VALUES ('Dysnomia', 1);
INSERT INTO moon(name, planet_id) VALUES ('Lambda', 1);