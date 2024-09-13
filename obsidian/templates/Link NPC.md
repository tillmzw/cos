<%*
const link_name = await tp.system.prompt("link name?");

const existing_files = tp.user.list_files("content/npcs/");
const link_target = await tp.system.suggester(existing_files, existing_files, true, "target?");
-%>
[<% link_name %>]({{< ref "<% link_target %>" >}})