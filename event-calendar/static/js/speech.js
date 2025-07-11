export function attachMic(btn,input){
  const SR=window.SpeechRecognition||window.webkitSpeechRecognition;
  if(!SR) return;
  const rec=new SR();
  rec.lang="en-US";
  rec.interimResults=false;
  rec.onresult=e=>{
    input.value=e.results[0][0].transcript;
  };
  btn.onclick=()=>rec.start();
}
attachMic(document.getElementById("mic-btn"), document.getElementById("chat-input"));
