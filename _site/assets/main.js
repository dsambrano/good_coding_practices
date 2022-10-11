const parentElement = document.querySelector('section.takeaways');
const ClassNames = parentElement.classList;
const takeaway_text = ClassNames.contains('series') ? "<h2>Series Takeaways</h2>": "<h2>Takeaways</h2>";

parentElement.insertAdjacentHTML("afterbegin", takeaway_text)
