import React from "react";

export const QuestionWithTextInput = ({ question  } : { question: string; }) => {

return (<div className="info-card">
            <h2>{question}</h2>
            <input />
        </div>);
};

