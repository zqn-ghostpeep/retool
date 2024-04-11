<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showHeaderBorder={false}
  showOverlay={true}
>
  <Header>
    <Button
      id="modalCloseButton1"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      marginType="normal"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="CreateUserForm1"
      footerPaddingType="normal"
      headerPaddingType="normal"
      heightType="fixed"
      marginType="normal"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [{ border: "surfacePrimary" }] }}
    >
      <Header>
        <Text
          id="formTitle5"
          marginType="normal"
          value="#### New user"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="textInput1"
          _disclosedFields={["required"]}
          formDataKey="name"
          label="Name"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
        />
        <TextInput
          id="middleFormInput2"
          _disclosedFields={[
            "patternType",
            "iconBefore",
            "editIcon",
            "required",
          ]}
          formDataKey="email"
          iconBefore="bold/mail-send-envelope"
          label="Email"
          labelPosition="top"
          marginType="normal"
          patternType="email"
          placeholder="you@example.com"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
        />
        <Date
          id="bottomFormInput4"
          _disclosedFields={["iconBefore", "editIcon", "required"]}
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="signup_date"
          iconBefore="bold/interface-calendar"
          label="Signup date"
          labelPosition="top"
          marginType="normal"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{ new Date() }}"
        />
        <Select
          id="select3"
          automaticItemColors={true}
          captionByIndex=""
          data="{{ getRows.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          formDataKey="role"
          label="Role"
          labelPosition="top"
          labels=""
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="Select a role"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.role }}"
        />
        <Checkbox
          id="checkbox4"
          _disclosedFields={["required"]}
          formDataKey="enabled"
          label="Enabled"
          marginType="normal"
          style={{ ordered: [{ borderRadius: "8px" }] }}
        />
      </Body>
      <Footer>
        <Button
          id="formButton2"
          marginType="normal"
          style={{
            ordered: [
              { background: "rgb(70, 166, 124)" },
              { borderRadius: "8px" },
            ],
          }}
          submit={true}
          submitTargetId="CreateUserForm1"
          text="Submit user"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addNewRow"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
