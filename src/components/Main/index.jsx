import React from 'react';
import {deepOrange500} from 'material-ui/styles/colors';
import getMuiTheme from 'material-ui/styles/getMuiTheme';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import Header from '../Header';
import NavDrawer from '../NavDrawer';
import Footer from '../Footer';

const muiTheme = getMuiTheme({
  palette: {
    accent1Color: deepOrange500,
  },
});

class Main extends React.Component {
  render() {
    return (
      <MuiThemeProvider muiTheme={muiTheme}>
        <div>
          <Header />
          <NavDrawer />
          <Footer />
        </div>
      </MuiThemeProvider>
    );
  }
}

export default Main;
