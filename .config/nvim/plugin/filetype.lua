local configure = function()
  vim.filetype.add({
    pattern = {
      -- Setup ansible filetype detections
      -- Similar logic to pearofducks/ansible-vim
      [".*group_vars/.*"] = "yaml.ansible",
      [".*host_vars/.*"] = "yaml.ansible",

      [".*handlers/.*%.ya?ml"] = "yaml.ansible",
      [".*roles/.*%.ya?ml"] = "yaml.ansible",
      [".*tasks/.*%.ya?ml"] = "yaml.ansible",
      [".*playbooks/.*%.ya?ml"] = "yaml.ansible",
      [".*inventories/.*%.ya?ml"] = "yaml.ansible",
      [".*defaults/.*%.ya?ml"] = "yaml.ansible",

      [".*hosts.*.ya?ml"] = "yaml.ansible",
      [".*main.ya?ml"] = "yaml.ansible",
      [".*site.ya?ml"] = "yaml.ansible",
    },
  })
end

vim.api.nvim_create_autocmd({ "User" }, {
  pattern = "VeryLazy",
  group = vim.api.nvim_create_augroup("VeryLazy_filetypes", {}),
  callback = configure,
})
