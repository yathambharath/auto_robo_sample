# Automation-Project

Unified **Robot Framework** test suite for  
* SAP GUI (classic Windows client)  
* Web UI (Selenium 4)  
* REST APIs  

## Quick Start
```
python -m venv venv
source venv/bin/activate   # Windows: venv\Scripts\activate
pip install -r requirements.txt
robot tests/
```

For parallel execution:
```
pabot --processes 4 --include smoke tests/
```

## Structure
* `config/` – environment & test-data variables  
* `keywords/` – reusable workflow keywords
* `libraries/` – Python helpers
* `resources/` – shared setup / teardown and page-specific POM resources
* `tests/` – suites grouped by SAP, Web, API  
* `results/`, `screenshots/` – generated at runtime  
