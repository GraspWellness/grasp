import React from 'react';
import PropTypes from 'prop-types';
import { withStyles } from 'material-ui/styles';
import MobileStepper from 'material-ui/MobileStepper';
import Button from 'material-ui/Button';
import KeyboardArrowLeft from 'material-ui-icons/KeyboardArrowLeft';
import KeyboardArrowRight from 'material-ui-icons/KeyboardArrowRight';
import Welcome from './Welcome';

const styles = {
  root: {
    maxWidth: 400,
    flexGrow: 1,
  },
};

class HydrationHelper extends React.Component {
  state = {
    activeStep: 0,
  };

  handleNext = () => {
    this.setState({
      activeStep: this.state.activeStep + 1,
    });
  };

  handleBack = () => {
    this.setState({
      activeStep: this.state.activeStep - 1,
    });
  };

  nextButton = () => {
    const { theme } = this.props;
    return (
      <Button dense onClick={this.handleNext} disabled={this.state.activeStep === 8}>
        Next
        {theme.direction === 'rtl' ? <KeyboardArrowLeft /> : <KeyboardArrowRight />}
      </Button>
    );
  };

  backButton = () => {
    const { theme } = this.props;
    return (
      <Button dense onClick={this.handleBack} disabled={this.state.activeStep === 0}>
        {theme.direction === 'rtl' ? <KeyboardArrowRight /> : <KeyboardArrowLeft />}
        Back
      </Button>
    );
  };

  render() {
    const { classes } = this.props;

    return (
      <div>
        <Welcome />
        <MobileStepper
          type="progress"
          steps={9}
          position="bottom"
          activeStep={this.state.activeStep}
          className={classes.root}
          nextButton={this.nextButton()}
          backButton={this.backButton()}
        />
      </div>
    );
  };
};

HydrationHelper.propTypes = {
  classes: PropTypes.object.isRequired,
  theme: PropTypes.object.isRequired,
};

export default withStyles(styles, { withTheme: true })(HydrationHelper);
