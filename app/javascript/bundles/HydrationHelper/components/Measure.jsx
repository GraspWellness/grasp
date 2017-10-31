import React from 'react';
import Slider from 'material-ui/Slider';

export default ({continueSurvey}) => {
  return (
    <div>
      <h3>
        First we need to figure out how much water you drink.
      </h3>
      <Slider />
      <button onClick={continueSurvey}>Continue to next step</button>
    </div>
  );
}
