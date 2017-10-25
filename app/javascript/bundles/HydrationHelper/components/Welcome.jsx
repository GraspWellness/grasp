import React from 'react';

export default ({continueSurvey}) => {
  return (
    <div>
      <h3>
        Welcome to the Hydration Helper!
      </h3>
      <p>
        Are you ready to get started drinking more water&#63;
      </p>
      <button onClick={continueSurvey}>I'm ready!</button>
    </div>
  );
}
