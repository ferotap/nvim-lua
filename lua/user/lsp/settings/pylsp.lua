local pylint_exe = vim.loop.cwd() .. '/.venv/bin/pylint'

return {
  settings = {
    pylsp = {
      -- configurationSources = "pycodestyle",
      plugins = {
        autopep8 = {
          enabled = false,
        },
        pycodestyle = {
          enabled = false,
        },
        pylint = {
          -- args = [],
          enabled = true,
          executable = pylint_exe,
        },
      },
    },
  },
}

-- Available settings and defaults
--
        -- plugins.flake8.config                               = null,
        -- plugins.flake8.enabled                              = false,
        -- plugins.flake8.exclude                              = [],
        -- plugins.flake8.executable                           = "flake8",
        -- plugins.flake8.filename                             = null,
        -- plugins.flake8.hangClosing                          = null,
        -- plugins.flake8.ignore                               = [],
        -- plugins.flake8.indentSize                           = null,
        -- plugins.flake8.maxComplexity                        = null,
        -- plugins.flake8.maxLineLength                        = null
        -- plugins.flake8.perFileIgnores                       = []
        -- plugins.flake8.select                               = null
        -- plugins.jedi.auto_import_modules                    = ["numpy"]
        -- plugins.jedi.env_vars                               = null
        -- plugins.jedi.environment                            = null
        -- plugins.jedi.extra_paths                            = []
        -- plugins.jedi_completion.cache_for                   = ["pandas","numpy","tensorflow","matplotlib"]
        -- plugins.jedi_completion.eager                       = false
        -- plugins.jedi_completion.enabled                     = true
        -- plugins.jedi_completion.fuzzy                       = false
        -- plugins.jedi_completion.include_class_objects       = false
        -- plugins.jedi_completion.include_function_objects    = false
        -- plugins.jedi_completion.include_params              = true
        -- plugins.jedi_completion.resolve_at_most             = 25
        -- plugins.jedi_definition.enabled                     = true
        -- plugins.jedi_definition.follow_builtin_definitions  = true
        -- plugins.jedi_definition.follow_builtin_imports      = true
        -- plugins.jedi_definition.follow_imports              = true
        -- plugins.jedi_hover.enabled                          = true
        -- plugins.jedi_references.enabled                     = true
        -- plugins.jedi_signature_help.enabled                 = true
        -- plugins.jedi_symbols.all_scopes                     = true
        -- plugins.jedi_symbols.enabled                        = true
        -- plugins.jedi_symbols.include_import_symbols         = true
        -- plugins.mccabe.enabled                              = true
        -- plugins.mccabe.threshold                            = 15
        -- plugins.preload.enabled                             = true
        -- plugins.preload.modules                             = []
        -- plugins.pycodestyle.enabled                         = true
        -- plugins.pycodestyle.exclude                         = []
        -- plugins.pycodestyle.filename                        = []
        -- plugins.pycodestyle.hangClosing                     = null
        -- plugins.pycodestyle.ignore                          = []
        -- plugins.pycodestyle.indentSize                      = null
        -- plugins.pycodestyle.maxLineLength                   = null
        -- plugins.pycodestyle.select                          = null
        -- plugins.pydocstyle.addIgnore                        = []
        -- plugins.pydocstyle.addSelect                        = []
        -- plugins.pydocstyle.convention                       = null
        -- plugins.pydocstyle.enabled                          = false
        -- plugins.pydocstyle.ignore                           = []
        -- plugins.pydocstyle.match                            = "(?!test_).*\\.py"
        -- plugins.pydocstyle.matchDir                         = "[^\\.].*"
        -- plugins.pydocstyle.select                           = null
        -- plugins.pyflakes.enabled                            = true
        -- plugins.pylint.args                                 = []
        -- plugins.pylint.enabled                              = false
        -- plugins.pylint.executable                           = null
        -- plugins.rope_autoimport.enabled                     = false
        -- plugins.rope_autoimport.memory                      = false
        -- plugins.rope_completion.eager                       = false
        -- plugins.rope_completion.enabled                     = false
        -- plugins.yapf.enabled                                = true
        -- rope.extensionModules                               = null
        -- rope.ropeFolder                                     = null
