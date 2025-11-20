function _dgebi(s){return document.getElementById(s);};function _dce(s){return document.createElement(s);};let serverurl="";let undo_stack=[];function char_to_sym(c)
{c=c.charCodeAt(0);if(c>=65&&c<65+26)
return c-65;else if(c>=97&&c<97+26)
return c-97;else
return-1;}
function sym_to_char(sym)
{return String.fromCharCode(65+sym);}
function most_common_letter(s)
{let hist=[];for(let i=0;i<26;i++)
hist.push(0);for(let i=0;i<s.length;i++){let c=char_to_sym(s.charAt(i));hist[c]++;}
let best=0;for(let i=0;i<26;i++){if(hist[i]>hist[best])
best=i;}
return String.fromCharCode(65+best);}
function undo_push(){let u={ciphertext:_dgebi("ciphertext").value,
clues:_dgebi("clues").value};undo_stack.push(u);}
function undo_pop(){while(1){if(undo_stack.length==0)
return;let u=undo_stack[undo_stack.length-1];undo_stack=undo_stack.slice(0,undo_stack.length-1);if(u.ciphertext===_dgebi("ciphertext").value&&
u.clues==_dgebi("clues").value){continue;}
_dgebi("ciphertext").value=u.ciphertext;_dgebi("clues").value=u.clues;set_message("");break;}}
function on_lowercase()
{let s=_dgebi("ciphertext").value;_dgebi("ciphertext").value=s.toLowerCase();let c=_dgebi("clues").value;_dgebi("clues").value=c.toLowerCase();set_message("");}
function on_uppercase()
{let s=_dgebi("ciphertext").value;_dgebi("ciphertext").value=s.toUpperCase();let c=_dgebi("clues").value;_dgebi("clues").value=c.toUpperCase();set_message("");}
function on_group5()
{let s=_dgebi("ciphertext").value;let out="";let outcount=0;for(let i=0;i<s.length;i++){if((s[i]>='a'&&s[i]<='z')||(s[i]>='A'&&s[i]<='Z')){out+=s[i];outcount++;if(outcount%5==0)
out+=" ";}}
_dgebi("ciphertext").value=out;set_message("");}
function on_scramble()
{let k=make_random_key();let s=_dgebi("ciphertext").value;_dgebi("ciphertext").value=scramble_string(s,k);if(true){let clues=_dgebi("clues").value;let count=0;let state="left";let out="";for(let cluesidx=0;cluesidx<clues.length;cluesidx++){let c=clues[cluesidx];if(c=='='){state="right";out+="=";continue;}
if((c>='a'&&c<='z')||(c>='A'&&c<='Z')){let sym=c.charCodeAt(0);if(c>='a'&&c<='z')
sym-='a'.charCodeAt(0);else
sym-='A'.charCodeAt(0);if(state=="left"){if(c>='a'&&c<='z')
out+=String.fromCharCode(97+k[sym]);else
out+=String.fromCharCode(65+k[sym]);count++;}else{out+=c;count--;if(count<=0){state="left";count=0;}}}else{out+=c;}}
_dgebi("clues").value=out;}
if(true){let clues="";for(let i=0;i<26;i++){clues+=String.fromCharCode(65+k[i]);clues+="=";clues+=String.fromCharCode(65+i);clues+=" ";}
set_message("scrambled using: "+clues);}}
function make_random_key()
{while(true){let k=[];for(let i=0;i<26;i++){k.push(i);}
for(let i=0;i<26;i++){let j=i+Math.floor(Math.random()*(26-i));let tmp=k[i];k[i]=k[j];k[j]=tmp;}
let bad=false;for(let i=0;i<26;i++)
if(k[i]==i)
bad=true;if(!bad)
return k;}}
function scramble_string(s,k)
{let out="";let v_a='a'.charCodeAt(0);let v_z='z'.charCodeAt(0);let v_A='A'.charCodeAt(0);let v_Z='Z'.charCodeAt(0);for(let i=0;i<s.length;i++){let c=s.charCodeAt(i);if(c>=v_a&&c<=v_z)
out+=String.fromCharCode(k[c-v_a]+v_a);else if(c>=v_A&&c<=v_Z)
out+=String.fromCharCode(k[c-v_A]+v_A);else
out+=String.fromCharCode(c);}
return out;}
function xmlrequest_json(url,request,on_success,on_error)
{let xmlhttp=new XMLHttpRequest();xmlhttp.onreadystatechange=function(){if(xmlhttp.readyState==4){if(xmlhttp.status==200){on_success(xmlhttp,JSON.parse(xmlhttp.response));}else{on_error(xmlhttp);}}};xmlhttp.open("POST",url,true);xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");xmlhttp.send(JSON.stringify(request));}
let all_solutions=null;function hamming(a,b)
{let aidx=0,bidx=0;let hamming=0;while(aidx<a.length&&bidx<b.length){if(a[aidx]==' '){aidx++;continue;}
if(b[bidx]==' '){bidx++;continue;}
if(a[aidx]!=b[bidx]){hamming++;}
aidx++;bidx++;}
return hamming;}
function merge_results(this_solutions)
{if(this_solutions==undefined){this_solutions=[];console.log("merge_results: solutions undefined");}
for(let i=0;i<this_solutions.length;i++){let found=0;for(let j=0;j<all_solutions.length;j++){if(this_solutions[i].plaintext==all_solutions[j].plaintext){all_solutions[j].logp=Math.max(all_solutions[j].logp,this_solutions[i].logp);found=1;break;}}
if(!found){all_solutions.push(this_solutions[i]);}}
all_solutions.sort(function(a,b){return b.logp-a.logp;});let best_sol=this_solutions[0];let hamms=[];for(let i=0;i<100;i++){hamms.push({logp:-999999999,
plaintext:"",
invalid:true});}
for(let i=0;i<all_solutions.length;i++){let h=hamming(all_solutions[i].plaintext,all_solutions[0].plaintext);if(h>=hamms.length)
continue;if(all_solutions[i].logp>hamms[h].logp)
hamms[h]=all_solutions[i];}
let display_sols=[];if(false){for(let i=0;i<hamms.length;i++){if(hamms[i].invalid)
continue;display_sols.push(hamms[i]);}
display_sols.sort(function(a,b){return b.logp-a.logp;});let max_display_sols=200;if(display_sols.length>max_display_sols)
display_sols.length=max_display_sols;}else{for(let i=0;i<all_solutions.length;i++)
display_sols.push(all_solutions[i]);let max_display_sols=200;if(display_sols.length>max_display_sols)
display_sols.length=max_display_sols;}
if(display_sols.length==0){let nosol={"logp":-Infinity,"plaintext"
:"no solutions found yet..."};display_sols.push(nosol);}
let table_el=_dgebi("soltable");while(table_el.rows.length<display_sols.length){let row=table_el.insertRow(-1);while(row.cells.length<3)
row.insertCell(-1);row.cells[0].className="soltable_index";row.cells[1].className="soltable_logp";row.cells[2].className="soltable_plaintext";}
for(let i=0;i<display_sols.length;i++){let row=table_el.rows[i];row.cells[0].innerHTML=""+i;row.cells[1].innerHTML=display_sols[i].logp.toFixed(3);row.cells[2].innerHTML=display_sols[i].plaintext;}}
function progress(amt)
{let el=_dgebi("progressbar_fg");el.style.width=""+(100*amt)+"%";}
function get_solving()
{return set_solving.value;}
function set_solving(v)
{set_solving.value=v;_dgebi("solve_button").className=v?"solve_gray solve_button":"solve_button";_dgebi("solve_options_button").className=v?"solve_options_button solve_gray":"solve_options_button";_dgebi("ciphertext").readOnly=v;_dgebi("ciphertext").style.background=v?"#eee":"#fff";_dgebi("clues").readOnly=v;_dgebi("clues").style.background=v?"#eee":"#fff";if(v){set_solving.old_title=_dgebi("solve_button").innerHTML;set_solving.t0=new Date().getTime();set_solving.old_color=_dgebi("solve_button").style.backgroundColor;function throb()
{let t=new Date().getTime();let dt=(t-set_solving.t0)/1000;dt=dt.toFixed(1);_dgebi("solve_button").innerHTML=""+dt+"";let v=Math.floor(128+100*(Math.sin(new Date().getTime()/200)+1)/2);v=v.toString(16);if(v.length==1)
v="0"+v;let s="#"+v+v+v;_dgebi("solve_button").style.backgroundColor=s;}
set_solving.timer_id=window.setInterval(throb,10);}else{_dgebi("solve_button").innerHTML=set_solving.old_title;window.clearInterval(set_solving.timer_id);_dgebi("solve_button").style.backgroundColor=set_solving.old_color;}}
function despace_ciphertext(s)
{let nsp=0;for(let i=0;i<s.length;i++){if(s[i]==' '||s[i]=='\t'||s[i]=='\n'||s[i]=='\r'){nsp++;}}
if(nsp>s.length/3){let out="";let inarow=0;for(let i=0;i<s.length;i++){if(s[i]==' '||s[i]=='\t'||s[i]=='\n'||s[i]=='\r'){inarow++;if(inarow>1)
out=out+' ';}else{out=out+s[i];inarow=0;}}
return despace_ciphertext(out);}else{return s;}}
function denumber_ciphertext(s)
{let nnum=0;let filtered="";for(let i=0;i<s.length;i++){if(s[i]>='0'&&s[i]<='9'){nnum++;}else{filtered+=s[i];}}
if(nnum>s.length/3){return filtered;}else{return s;}}
function should_solve_spaces(s)
{s=s.trim();let lenhist=[0];let nwords=0;let len=0;for(let i=0;i<s.length;i++){if(s[i]==' '||s[i]=='\t'||s[i]=='\n'||s[i]=='\r'||i==(s.length-1)){while(lenhist.length<=len)
lenhist.push(0);if(len>0){lenhist[len]++;nwords++;len=0;}}else{len++;}}
if(nwords==0)
return true;let entropy=0;for(let i=0;i<lenhist.length;i++){if(lenhist[i]==0)
continue;let p=lenhist[i]/nwords;entropy+=-p*Math.log(p);}
let thresh=1.0;let willsolve=entropy<thresh;if(nwords<=2&&s.length<22)
willsolve=false;if(nwords==1&&s.length>22)
willsolve=true;console.log("entropy of spaces: "+entropy+" thresh: "+thresh+". Will "+(willsolve?"":"NOT ")+"solve for spaces.");return willsolve;}
let ciphertext_last=null,clues_last=null,solvespaces_last=false;let mode_last=null;function on_solve_button(mode)
{if(get_solving())
return;set_message("");let ciphertext=_dgebi("ciphertext").value.trim();_dgebi("ciphertext").value=ciphertext;let clues=_dgebi("clues").value;if(ciphertext!=ciphertext_last||
clues!=clues_last||
mode!=mode_last||
all_solutions==null){all_solutions=[];all_solutions.keys={};let table_el=_dgebi("soltable");while(table_el.rows.length>0)
table_el.deleteRow(0);}
ciphertext_last=ciphertext;clues_last=clues;mode_last=mode;let request={"ciphertext":ciphertext,"clues"
:clues,"mode"
:mode,"was_auto"
:(mode=="auto"),"was_clue"
:(mode=="clue")
};run_request.nrequests=0;run_request.did_alert=false;function dec_count()
{run_request.nrequests--;if(run_request.nrequests==0)
set_solving(false);}
function run_request(request)
{console.log(request);run_request.nrequests++;if(run_request.nrequests==1)
set_solving(true);let timerid=0;let id=0;xmlrequest_json(serverurl+"/solve",
request,
function(xmlhttp,response){id=response.id;let poll_interval_ms=1000*response.poll_interval;timerid=window.setInterval(poll,poll_interval_ms);let message="";if(response["ciphertext-decoded"]){_dgebi("ciphertext").value=response["ciphertext-decoded"];message+="detected "+response["decode-method"]+" encoding. ";}
if(request["mode"]=="auto")
message+="automatically selected "+response["mode"]+" mode; you can override by using the drop down menu next to the solve button.";if(message!="")
set_message(message);if(response.clues_errstr)
set_message("the clues aren't formatted properly, but will attempt to solve anyway.");},
function(xmlhttp){if(!run_request.did_alert)
alert("request failed");run_request.did_alert=true;dec_count();});function poll()
{xmlrequest_json(serverurl+"/status",
{"id":id},
function(xmlhttp,response){if(mode=="clue"){if(response.last){let el=_dgebi("clues");let removed_ciphertext=ciphertext;let cluetoks=clues.split(/\s+/);console.log(cluetoks);for(let i=0;i<cluetoks.length;i++){let kv=cluetoks[i].split("=");if(kv.length!=2)
continue;for(let j=0;j<kv[0].length;j++){removed_ciphertext=removed_ciphertext.replaceAll(kv[0][j].toUpperCase(),"");removed_ciphertext=removed_ciphertext.replaceAll(kv[0][j].toLowerCase(),"");}}
console.log(removed_ciphertext);let c=most_common_letter(removed_ciphertext);if(response.solutions.length==0){set_message("I have no idea!");}else{let p=response.solutions[0].key[char_to_sym(c)];let newclue=c+"="+p;if(el.value.indexOf(newclue)<0){if(el.value!=""&&!el.value.endsWith(" "))
el.value+=" ";el.value+=newclue;}
if(response.solutions[0].logp<-3){set_message("Warning - I don't think this is right: "+newclue);}else if(response.solutions[0].logp<-1.9)
set_message("I'm not sure about this clue: "+newclue);else
set_message("Here's a clue: "+newclue);}}}else{console.log(response);merge_results(response.solutions);}
if(response.last){window.clearInterval(timerid);dec_count();}},
function(xmlhttp){window.clearInterval(timerid);dec_count();});}}
run_request(request);}
function set_message(m)
{let mel=_dgebi("message");if(m==""){mel.style.display="none";return;}
while(mel.firstChild)
mel.removeChild(mel.firstChild);let s1=_dce("div");s1.innerHTML="&otimes;";mel.appendChild(s1);s1.className="message_close";s1.onclick=function(){set_message("");};let s2=_dce("div");s2.innerHTML=m;s2.className="message_contents";mel.appendChild(s2);mel.style.display="block";}
function set_dropdown_visible(v)
{let el=_dgebi("solve_options_dropdown");if(v){el.style.display="block";document.onclick=function(){el.style.display="none";}}else{el.style.display="none";document.onclick=null;}}
window.onload=function(){set_message("");_dgebi("solve_options_button").onclick=function(e){set_dropdown_visible(true);e.stopPropagation();}
if(true){let el=_dgebi("solve_options_dropdown");if(true){let child=_dce("div");child.className="solve_options_dropdown_item";child.innerHTML="solve (statistics)";child.onclick=function(e){on_solve_button("statistics");set_dropdown_visible(false);e.stopPropagation();};el.appendChild(child);}
if(true){let child=_dce("div");child.className="solve_options_dropdown_item";child.innerHTML="solve (patristocrat)";child.onclick=function(e){on_solve_button("patristocrat");set_dropdown_visible(false);e.stopPropagation();};el.appendChild(child);}
if(true){let child=_dce("div");child.className="solve_options_dropdown_item";child.innerHTML="solve (dictionary)";child.onclick=function(e){on_solve_button("dictionary");set_dropdown_visible(false);e.stopPropagation();};el.appendChild(child);}
if(true){let child=_dce("div");child.className="solve_options_dropdown_item";child.innerHTML="just a clue";child.onclick=function(e){on_solve_button("clue");set_dropdown_visible(false);e.stopPropagation();};el.appendChild(child);}
if(true){let child=_dce("div");child.className="solve_options_dropdown_item";child.style.height="8px";el.appendChild(child);}
if(true){let child=_dce("div");child.className="solve_options_dropdown_item";child.innerHTML="scramble";child.onclick=function(e){undo_push();on_scramble();set_dropdown_visible(false);e.stopPropagation();};el.appendChild(child);}
if(true){let child=_dce("div");child.className="solve_options_dropdown_item";child.innerHTML="vigenere";child.onclick=function(e){on_solve_button("vig");set_dropdown_visible(false);e.stopPropagation();};el.appendChild(child);}
if(true){let child=_dce("div");child.className="solve_options_dropdown_item";child.innerHTML="group in 5s";child.onclick=function(e){undo_push();on_group5();set_dropdown_visible(false);e.stopPropagation();};el.appendChild(child);}
if(true){let child=_dce("div");child.className="solve_options_dropdown_item";child.innerHTML="lowercase";child.onclick=function(e){undo_push();on_lowercase();set_dropdown_visible(false);e.stopPropagation();};el.appendChild(child);}
if(true){let child=_dce("div");child.className="solve_options_dropdown_item";child.innerHTML="uppercase";child.onclick=function(e){undo_push();on_uppercase();set_dropdown_visible(false);e.stopPropagation();};el.appendChild(child);}
if(true){let child=_dce("div");child.className="solve_options_dropdown_item";child.style.height="8px";el.appendChild(child);}
if(true){let child=_dce("div");child.className="solve_options_dropdown_item";child.innerHTML="undo";child.onclick=function(e){undo_pop();set_dropdown_visible(false);e.stopPropagation();};el.appendChild(child);}}
if(true){xmlrequest_json(serverurl+"/quote",
{},
function(xmlhttp,response){let s=response.quoteText;if(!s.endsWith("."))
s+=".";if(response.quoteAuthor.length>0)
s+=" "+response.quoteAuthor;if(!s.endsWith("."))
s+=".";let k=make_random_key();let el=_dgebi("ciphertext");if(el.value==""){el.value=scramble_string(s,k);let armed=true;el.onclick=function(){if(armed){el.select();armed=false;}}
el.onchange=function(){armed=false;}}},
function(xmlhttp){});}};function on_title()
{document.location="/";}