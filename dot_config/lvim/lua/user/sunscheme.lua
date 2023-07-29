-- Writing a Lua script to calculate sunset time based on longitude and latitude without any third-party libraries or internet connection is a challenging task because it involves complex astronomical calculations.
-- However, I'll provide you with a simplified approach using the Zenith approximation method. This method is not 100% accurate but it gives a close approximation of sunset time.

-- Here's a step-by-step explanation of the code:

-- 1. We'll first calculate the day of the year.
-- 2. Then, we'll calculate the geometric mean longitude of the Sun.
-- 3. Next, we'll calculate the geometric mean anomaly of the Sun.
-- 4. Then, we'll calculate the eccentricity of Earth's orbit.
-- 5. Then, we'll calculate the Sun's equation of the center.
-- 6. Then, we'll calculate the Sun's true longitude.
-- 7. Next, we'll calculate the Sun's true anomaly.
-- 8. Then, we'll calculate the Sun's radial distance.
-- 9. Then, we'll calculate the Sun's apparent longitude.
-- 10. Then, we'll calculate the mean obliquity of the ecliptic.
-- 11. Then, we'll calculate the corrected obliquity.
-- 12. Then, we'll calculate the Sun's right ascension.
-- 13. Then, we'll calculate the Sun's declination.
-- 14. Then, we'll calculate the observer's longitude in degrees.
-- 15. Then, we'll calculate the local hour angle.
-- 16. Then, we'll calculate the local mean time.
-- 17. Finally, we'll calculate the local standard time.


function sunSetTime(latitude, longitude)
    -- Constants
    local zenith = 90.83
    local pi = math.pi
    local rad = pi / 180

    -- Current date
    local now = os.date("*t")
    local N = now.yday

    -- Compute the geometric mean longitude of the Sun
    local L = (280.460 + 0.9856474 * N) % 360

    -- Compute the geometric mean anomaly of the Sun
    local g = rad * ((357.528 + 0.9856003 * N) % 360)

    -- Compute the eccentricity of earth's orbit
    local e = 0.016709 - 0.000042037 * N

    -- Compute the Sun's equation of the center
    local C = (1.9148 * math.sin(g) + 0.02 * math.sin(2 * g) + 0.0003 * math.sin(3 * g)) * rad

    -- Compute the Sun's true longitude
    local lambda = rad * ((L + C) % 360)

    -- Compute the Sun's true anomaly
    local v = g + C

    -- Compute the Sun's radial distance
    local R = (1.00014 - 0.01671 * math.cos(v) - 0.00014 * math.cos(2 * v)) * 149597870.7

    -- Compute the Sun's apparent longitude
    local omega = rad * 125.04 - 0.052954 * N
    local lambda = lambda - rad * 0.00569 - rad * 0.00478 * math.sin(omega)

    -- Compute the mean obliquity of the ecliptic
    local epsilon0 = rad * (23.439 - 0.0000004 * N)

    -- Compute the corrected obliquity
    local epsilon = epsilon0 + rad * 0.00256 * math.cos(omega)

    -- Compute the Sun's right ascension
    local alpha = math.atan2(math.cos(epsilon) * math.sin(lambda), math.cos(lambda))

    -- Compute the Sun's declination
    local delta = math.asin(math.sin(epsilon) * math.sin(lambda))

    -- Compute the observer's longitude in degrees
    local longRad = -longitude * rad

    -- Compute the local hour angle
    local H = (math.cos(rad * zenith) - math.sin(latitude * rad) * math.sin(delta)) / (math.cos(latitude * rad) * math.cos(delta))
    H = math.acos(H)

    -- Compute local mean time
    local T = H + alpha - 0.06571 * N - 6.622

    -- Adjust back to UTC, and keep the value between 0 and 24
    local UT = (T - longRad / pi * 12) % 24

    -- Convert UT value to local standard time zone
    local daylightSaving = now.isdst and 1 or 0
    local ST = (UT + daylightSaving + math.floor(longitude / 15)) % 24

    return ST
end

function onDay()
    print("It's day time!")
end

function onNight()
    print("It's night time!")
end

-- Usage
local sunsetTime = sunSetTime(48.8566, 2.3522) -- For Paris, France
local currentTime = os.date("*t").hour

if currentTime >= sunsetTime or currentTime < (sunsetTime - 12) then
    onNight()
else
    onDay()
end


-- This script calculates the sunset time for a given latitude and longitude (in this case, for Paris, France).
-- It then checks if the current time is past the sunset time or before the sunrise time (assumed to be 12 hours before the sunset).
-- If so, it calls the `onNight` function; otherwise, it calls the `onDay` function.

-- Please note that this script assumes that the sunrise time is exactly 12 hours before the sunset time, which is a simplification.
-- In reality, the time difference between sunrise and sunset changes throughout the year.
-- For a more accurate calculation, you would need to perform similar calculations for the sunrise time.

-- Also, this script does not account for the equation of time, which corrects for the eccentricity of Earth's orbit and the tilt of Earth's axis,
-- and can cause the actual sunrise and sunset times to deviate by several minutes from the calculated times.

-- Finally, this script does not account for atmospheric refraction, which can cause the sun to be visible even when it is geometrically below the horizon.
-- For a more accurate calculation, you would need to adjust the zenith angle based on the atmospheric conditions.