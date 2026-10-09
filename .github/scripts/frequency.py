
import os
from collections import Counter

text = os.environ.get("INPUT_TEXT", "Hello World")

vowels = "aeiou"
counts = Counter(char.lower() for char in text if char.lower() in vowels)

for vowel in vowels:
    print(f"{vowel}: {counts[vowel]}")
