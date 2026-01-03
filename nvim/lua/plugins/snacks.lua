return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    notifier = {
      icons = {
        error = " ",
        warn = " ",
        info = " ",
        debug = " ",
        trace = " ",
      },
      ---@type snacks.notifier.style
      style = "compact",
      top_down = true,
      date_format = "%R",
      border = true,
      zindex = 100,
      width = 0.6,
      height = 0.6,
      minimal = false,
      title = " Notification History ",
      title_pos = "center",
      ft = "markdown",
      bo = { filetype = "snacks_notif_history", modifiable = false },
      wo = { winhighlight = "Normal:SnacksNotifierHistory" },
      keys = { q = "close" },
    },
    image = {
      formats = {
        "png",
        "jpg",
        "jpeg",
        "gif",
        "bmp",
        "webp",
        "tiff",
        "heic",
        "avif",
        "mp4",
        "mov",
        "avi",
        "mkv",
        "webm",
        "pdf",
        "icns",
      },
      float = true,
    },
    indent = {
      priority = 1,
      enabled = true,
      char = "|",
      only_scope = false,
      only_current = false,
    },
    lazygit = {
      configure = true,
    },
    gh = {
      icons = {
        logo = " ",
        user = " ",
        checkmark = " ",
        crossmark = " ",
        block = "■",
        file = " ",
        checks = {
          pending = " ",
          success = " ",
          failure = "",
          skipped = " ",
        },
        issue = {
          open = " ",
          completed = " ",
          other = " ",
        },
        pr = {
          open = " ",
          closed = " ",
          merged = " ",
          draft = " ",
          other = " ",
        },
        review = {
          approved = " ",
          changes_requested = " ",
          commented = " ",
          dismissed = " ",
          pending = " ",
        },
        merge_status = {
          clean = " ",
          dirty = " ",
          blocked = " ",
          unstable = " ",
        },
        reactions = {
          thumbs_up = "👍",
          thumbs_down = "👎",
          eyes = "👀",
          confused = "😕",
          heart = "❤️",
          hooray = "🎉",
          laugh = "😄",
          rocket = "🚀",
        },
      },
    },
    issue = {
      open = " ",
      completed = " ",
      other = " ",
    },
    pr = {
      open = " ",
      closed = " ",
      merged = " ",
      draft = " ",
      other = " ",
    },
    review = {
      approved = " ",
      changes_requested = " ",
      commented = " ",
      dismissed = " ",
      pending = " ",
    },
    merge_status = {
      clean = " ",
      dirty = " ",
      blocked = " ",
      unstable = " ",
    },
    reactions = {
      thumbs_up = "👍",
      thumbs_down = "👎",
      eyes = "👀",
      confused = "😕",
      heart = "❤️",
      hooray = "🎉",
      laugh = "😄",
      rocket = "🚀",
    },
    keys = {
      {
        "<leader>gi",
        function()
          Snacks.picker.gh_issue()
        end,
        desc = "GitHub Issues (open)",
      },
      {
        "<leader>gI",
        function()
          Snacks.picker.gh_issue({ state = "all" })
        end,
        desc = "GitHub Issues (all)",
      },
      {
        "<leader>gp",
        function()
          Snacks.picker.gh_pr()
        end,
        desc = "GitHub Pull Requests (open)",
      },
      {
        "<leader>gP",
        function()
          Snacks.picker.gh_pr({ state = "all" })
        end,
        desc = "GitHub Pull Requests (all)",
      },
    },
  },
  input = {
    icon = " ",
    icon_hl = "SnacksInputIcon",
    icon_pos = "left",
    prompt_pos = "title",
    win = { style = "input" },
    expand = true,
  },
}
