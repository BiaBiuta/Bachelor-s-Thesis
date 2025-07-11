const greetings=[
  "👋 Hey there! I'm your Nurse Scheduling Assistant.",
  "🩺 Ready to plan your shifts?",
  "📅 Let’s build your perfect schedule!",
  "🤖 Need help with your availability or conflicts?",
  "👩‍⚕️ I’m here to make scheduling simple!"
];

export function initialGreeting(){
  const g = greetings[Math.floor(Math.random()*greetings.length)];
  return `${g}\n\nYou can ask me things like:\n• “Schedule me for Monday morning 23”\n• “What’s my availability?”\n• “Am I double booked next week?”`;
}
