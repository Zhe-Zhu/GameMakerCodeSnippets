// ----------Create-------------

playerSpeed = 5;

// Store player direction
enum PlayerDirection{
    UP,
    DOWN,
    LEFT,
    RIGHT
}
m_playerDirection = PlayerDirection.DOWN;

// ---------End----------------

//Shortcuts for keypresses
MOVELEFT = keyboard_check(ord("A"));
MOVERIGHT = keyboard_check(ord("D"));
MOVEUP = keyboard_check(ord("W"));
MOVEDOWN = keyboard_check(ord("S"));

//Move Player
if (MOVELEFT && x > sprite_width/2)
{
    x -= playerSpeed;
    m_playerDirection = PlayerDirection.LEFT;
}

if (MOVERIGHT && x < room_width - sprite_width/2)
{
    x += playerSpeed;
    m_playerDirection = PlayerDirection.RIGHT;
}

if (MOVEUP && y > room_height/2)
{
    y -= playerSpeed;
    m_playerDirection = PlayerDirection.UP;
}

if (MOVEDOWN && y < room_height - sprite_width/2)
{
    y += playerSpeed;
    m_playerDirection = PlayerDirection.DOWN;
}
