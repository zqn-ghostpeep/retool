<Frame
  id="$header"
  _disclosedFields={{ array: ["primary-surface", "accent-background"] }}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={false}
  sticky={true}
  style={{
    ordered: [
      { "primary-surface": "rgb(23, 61, 36)" },
      { "primary-text": "" },
      { "accent-background": "rgb(70, 166, 124)" },
    ],
  }}
  type="header"
>
  <Navigation
    id="navigation"
    itemMode="static"
    marginType="normal"
    orientation="vertical"
    src="https://retool-templates.s3.us-west-2.amazonaws.com/app-templates/admin-panel-logo.png"
    style={{
      ordered: [
        { highlightBackground: "" },
        { highlightText: "rgb(70, 166, 124)" },
        { hoverText: "" },
      ],
    }}
  >
    <Option id="1a78b" itemType="app" label="Home" />
    <Option
      id="16313"
      disabled={false}
      hidden={false}
      iconPosition="left"
      itemType="app"
      label="Customers"
    />
    <Option id="c828b" label="Resources" />
    <Option id="f36c7" label="Sales" />
    <Option id="51123" label="Workflows" />
    <Option
      id="a76a9"
      disabled={false}
      hidden={false}
      highlight={false}
      iconPosition="left"
      itemType="app"
      label="Menu item 6"
    />
  </Navigation>
</Frame>
