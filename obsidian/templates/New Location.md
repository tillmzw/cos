<%*
const target_dir = "content/locations/";

const name = await tp.system.prompt("name?");
const description = await tp.system.prompt("description?");
const draft = await tp.system.suggester(["yes", "no"], [true, false], true, "draft?");
const creation = await tp.file.creation_date("YYYY-MM-DD");

const file_name = name.replace(" ", "-").toLowerCase();
await tp.file.move(target_dir + file_name);
-%>
---
title: <% name %>
draft: <% draft %>
date: <% creation %>
description: <% description %>
tags:
- location

---

