<script>
  const elems = document.querySelectorAll("main *");
  for (let i = 0; i < elems.length; i++) {
    let lang = "";
    if (i % 2 == 0) {
      lang = "ru";
    } else {
      lang = "de";
    }
    elems[i].setAttribute("lang", lang);
  }
</script>
