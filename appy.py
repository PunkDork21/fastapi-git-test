import logging
import time

log = logging.getLogger(__name__)
log.setLevel(logging.INFO)

if __name__ == "__main__":
    log.info('Im starting')
    while True:
        log.info('Im running')
        time.sleep(5)
