---
to: "src/renderer/components/<%= h.inflection.dasherize(name).toLowerCase().slice(0, 5) === 'app-' ? '_' : '' %><%= h.inflection.dasherize(name) %>.vue"
---
<%
if (blocks.indexOf('template') !== -1) {
%>
<template>
  <div/>
</template>
<%
}

if (blocks.indexOf('script') !== -1) {
%><script>
export default {
  <% if (blocks.indexOf('template') === -1) {
  %>render(h) {
    return <div/>
  }<% } %>
}
</script>
<%
}

if (blocks.indexOf('style') !== -1) {
%>
<style lang="scss" module>
@import '~@branding';
</style><%
}
%>
