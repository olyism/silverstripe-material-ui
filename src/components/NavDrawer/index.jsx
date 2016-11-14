import React from 'react';
import Drawer from 'material-ui/Drawer';
import MenuItem from 'material-ui/MenuItem';

class NavDrawer extends React.Component {

  constructor(props) {
    super(props);
    this.state = {open: true}
  }

  render() {
    return(
      <Drawer open={this.state.open}>
        <MenuItem>Home</MenuItem>
        <MenuItem>Topic</MenuItem>
        <MenuItem>Places</MenuItem>
        <MenuItem>Indicators</MenuItem>
        <MenuItem>My dashboards</MenuItem>
      </Drawer>
    );
  }
}

export default NavDrawer;
