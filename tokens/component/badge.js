const variants = [`danger`,`warning`,`success`];

module.exports = {
  component: {
    badge: {
      "font-size": { value: "{size.font.small.value}" },
      "border-radius": { value: "{size.border.radius.large.value}" },
      ...variants.reduce((obj, variant) => {
        obj[variant] = {
          "background-color": { value: `{color.background.${variant}.value}` },
          "color": { value: `{color.font.${variant}.value}` }
        }
        return obj
      }, {})
    }
  }
}