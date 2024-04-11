<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Include src="./src/modalFrame1.rsx" />
  <Frame
    id="$main"
    _disclosedFields={{ array: [] }}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Button
      id="button1"
      marginType="normal"
      style={{
        ordered: [{ background: "rgb(70, 166, 124)" }, { borderRadius: "8px" }],
      }}
      text="Add user"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="title"
      _disclosedFields={["color"]}
      marginType="normal"
      style={{ ordered: [{ color: "rgb(23, 61, 36)" }] }}
      value="### User Management"
    />
    <TextInput
      id="searchFilter"
      _disclosedFields={["iconBefore"]}
      hideLabel={true}
      iconBefore="bold/interface-search"
      marginType="normal"
      placeholder="Search by name"
    />
    <Table
      id="dataTable"
      cellSelection="none"
      changesetArray={[]}
      clearChangesetOnSave={true}
      cursorCache={{}}
      data="{{ getRows.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "dee66", direction: "desc" } }]}
      enableSaveActions={true}
      primaryKeyColumnId="dee66"
      searchTerm="{{searchFilter.value}}"
      selectedDataIndexes={[]}
      selectedRowKeys={[]}
      selectedRows={[]}
      selectedSourceRows={[]}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      sortArray={[]}
      style={{
        border: "rgb(204, 204, 204)",
        borderRadius: "8px",
        accent: "rgb(70, 166, 124)",
      }}
      templatePageSize={20}
    >
      <Column
        id="dee66"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={31.546875}
      />
      <Column
        id="4ad9e"
        alignment="left"
        format="string"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={140.109375}
      />
      <Column
        id="8fc55"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        key="email"
        label="Email"
        position="center"
        size={204.234375}
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="dbc77"
        alignment="left"
        format="datetime"
        key="signup_date"
        label="Signup date"
        placeholder="Enter value"
        position="center"
        size={152.921875}
      />
      <Column
        id="9495e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        key="role"
        label="Role"
        placeholder="Select option"
        position="center"
        size={71.78125}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="fa654"
        alignment="left"
        format="boolean"
        key="enabled"
        label="Enabled"
        placeholder="Enter value"
        position="center"
        size={62.875}
      />
    </Table>
    <Form
      id="UpdateUserForm1"
      footerPaddingType="normal"
      headerPaddingType="normal"
      marginType="normal"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle4"
          marginType="normal"
          value="#### {{dataTable.selectedRow.name}}"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="email1"
          formDataKey="email"
          iconBefore="bold/mail-send-envelope"
          label="Email"
          marginType="normal"
          patternType="email"
          placeholder="you@example.com"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{dataTable.selectedRow?.email}}"
        />
        <Date
          id="date1"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="signup_date"
          iconBefore="bold/interface-calendar"
          label="Signup date"
          marginType="normal"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{dataTable.selectedRow.signup_date}}"
        />
        <Select
          id="select2"
          captionByIndex=""
          data="{{ getRows.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          formDataKey="role"
          label="Role"
          labels=""
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="Select a role"
          required={true}
          showSelectionIndicator={true}
          value="{{ dataTable.selectedRow.role }}"
          values="{{ item.role }}"
        />
        <Checkbox
          id="checkbox3"
          _disclosedFields={["required", "checkedBackground"]}
          formDataKey="enabled"
          label="Enabled"
          labelPosition="left"
          marginType="normal"
          style={{
            ordered: [
              { checkedBackground: "rgb(70, 166, 124)" },
              { borderRadius: "8px" },
            ],
          }}
          value="{{dataTable.selectedRow?.enabled}}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          marginType="normal"
          style={{ ordered: [{ borderRadius: "8px" }, { background: "" }] }}
          styleVariant="outline"
          submit={true}
          submitTargetId="UpdateUserForm1"
          text="Save changes"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateRow"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Module
      id="test1"
      name="test"
      pageUuid="8a6c74d2-f6b2-11ee-b8e8-07633928ebce"
    />
  </Frame>
</App>
