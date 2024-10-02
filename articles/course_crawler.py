import requests
from bs4 import BeautifulSoup
import re

# URL of the webpage containing the courses
url = 'https://calendar.ontariotechu.ca/preview_program.php?catoid=81&poid=17568&returnto=3700'

# Send a GET request to the webpage
response = requests.get(url)

# Parse the webpage content with BeautifulSoup
soup = BeautifulSoup(response.content, 'html.parser')

# Define a regular expression pattern to match course codes like "CSCI xxxxU"
course_pattern = re.compile(r'CSCI \d{4}U')

# Find all text elements that match the course pattern
text_elements = soup.find_all(string=course_pattern)

# Use a set to store unique course codes
courses = set()

for element in text_elements:
    # Find all occurrences of the course pattern in the text element
    matches = course_pattern.findall(element)
    for match in matches:
        courses.add(match)

# Convert the set to a sorted list
course_list = sorted(courses)

# Output the list of courses
print(course_list)
