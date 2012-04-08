function ce_subotch(sdiv)
{
 otch = document.getElementById(sdiv);
 cssotch = otch.style;
 if(cssotch.display != "none")
 {
  cssotch.display = "none";
 }
 else
 {
  cssotch.display = "";
 }
}

function select_switch(status)
{
 for (i = 0; i < document.private_mess.length; i++)
 {
  document.private_mess.elements[i].checked = status;
 }
}

function showEl(pname)
{
 p = document.getElementById(pname)
 if (p)
 {
  if (p.style.display!='block') p.style.display='block'
 }
}

function showElInline(pname)
{
 p = document.getElementById(pname)
 if (p)
 { 
  if (p.style.display!='inline') p.style.display='inline'
 }
}

function hideEl(pname)
{
 p = document.getElementById(pname)
 if (p)
 {
  if (p.style.display!='none')
  {
   p.style.display='none'
   return true
  }
 }
}

function back_support_form()
{
 if ( document.forms.back_support.code.value.length < 1)
 {
  alert("Ошибка : Введите код");
  document.forms.back_support.code.focus();
  return false;
 }
 if ( document.forms.back_support.name.value.length < 1)
 {
  alert("Ошибка : Введите Ваше имя");
  document.forms.back_support.name.focus();
  return false;
 }
 if ( document.forms.back_support.text_form.value.length < 1)
 {
  alert("Ошибка : Введите сообщение");
  document.forms.back_support.text_form.focus();
  return false;
 }
 return true;
}

function back_mail_form()
{
 if ( document.forms.back_mail.code.value.length < 1)
 {
  alert("Ошибка : Введите код");
  document.forms.back_mail.code.focus();
  return false;
 }
 if ( document.forms.back_mail.contact.value.length < 1)
 {
  alert("Ошибка : Введите Ваш e-mail");
  document.forms.back_mail.contact.focus();
  return false;
 }
 if (! (/^\w+[-_\.]*\w+@\w+-?\w+\.[a-z]{2,4}$/.test(document.forms.back_mail.contact.value)) )
 {
  alert("Ошибка : Вы ввели некорректный e-mail адрес");
  document.forms.back_mail.contact.focus();
  return false;
 } 
 if ( document.forms.back_mail.text_form.value.length < 1)
 {
  alert("Ошибка : Введите сообщение");
  document.forms.back_mail.text_form.focus();
  return false;
 }
 return true;
}

function back_wm_form()
{
 if ( document.forms.back_wm.code.value.length < 1)
 {
  alert("Ошибка : Введите код");
  document.forms.back_wm.code.focus();
  return false;
 }
 if ( document.forms.back_wm.contact.value.length < 1)
 {
  alert("Ошибка : Введите Ваш e-mail");
  document.forms.back_wm.contact.focus();
  return false;
 }
 if (! (/^\w+[-_\.]*\w+@\w+-?\w+\.[a-z]{2,4}$/.test(document.forms.back_wm.contact.value)) )
 {
  alert("Ошибка : Вы ввели некорректный e-mail адрес");
  document.forms.back_wm.contact.focus();
  return false;
 } 
 if ( document.forms.back_wm.text_form.value.length < 1)
 {
  alert("Ошибка : Введите сообщение");
  document.forms.back_wm.text_form.focus();
  return false;
 }
 return true;
}

function enableback_wm_()
{
 hideEl('back_support_form')
 showEl('back_wm_form')
 hideEl('back_mail_form')
}

function enableback_support_()
{
 showEl('back_support_form')
 hideEl('back_wm_form')
 hideEl('back_mail_form')
}

function enableback_mail_()
{
 hideEl('back_support_form')
 hideEl('back_wm_form')
 showEl('back_mail_form')
}

enableback_support_()
