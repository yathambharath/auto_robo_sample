"""Hand-written Python helpers usable from Robot."""
from robot.api.deco import keyword

@keyword
def shout(message: str) -> str:
    """Return the supplied message upper-cased."""
    return message.upper()
