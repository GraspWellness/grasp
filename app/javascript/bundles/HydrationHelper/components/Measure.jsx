import React from 'react';

export default ({continueSurvey}) => {
  return (
    <div>
      <h3>
        First we need to figure out how much water you drink.
      </h3>
      <p>
        The slider goes here...
      </p>
      <button onClick={continueSurvey}>Continue to next step</button>
    </div>
  );
}
