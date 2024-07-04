import React from "react";

export const QuestionWithMultiChoice = ({ question, answerOptions } : { question: string; answerOptions: string[]; }) => {

return (<div className="info-card">
            <h2>{question}</h2>
            {answerOptions.map(a => {
                return (<div>
                <input type="checkbox" />
                <label htmlFor="vehicle1">{a}</label>
                
                </div>);
            })}
        
        </div>);
};

