// Simulate fetching user data (Replace this with a real API call)
const user = JSON.parse(localStorage.getItem('user')); // Example: Local Storage
// Example: Assume backend sends { name: "John Doe" } when user logs in

// Update UI based on user data
if (user && user.name) {
  const userNameElement = document.getElementById('user-name');
  const userProfile = document.getElementById('user-profile');

  // Set the user's name
  userNameElement.textContent = user.name;

  // Show the user profile
  userProfile.style.display = 'block';
}
