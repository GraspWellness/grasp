import React, { Component } from 'react';
import PropTypes from 'prop-types';
import Welcome from './welcome';
import Measure from './measure';
import Summary from './summary';


export default class HydrationHelper extends Component {
  constructor(props) {
    super(props);
    this.state = { step: 1 };
  }

  continueSurvey = () => {
    this.setState((prevState) => {
      return { step: prevState.step + 1 };
    })
  };

  renderCurrentStep = () => {
    switch (this.state.step) {
      case 1:
        return (<Welcome continueSurvey={this.continueSurvey} />);
      case 2:
        return (<Measure continueSurvey={this.continueSurvey} />);
      case 3:
        return (<Summary />);
    }
  };

  render() {
    return (
      <div>
        {this.renderCurrentStep()}
      </div>
    );
  }
}
