import React from "react";

export const InformationCard = ({ headerText, bulletPoints } : { headerText: string;  bulletPoints: string[]; }) => {

return (<div className="info-card">
            <h2>{headerText}</h2>
            <ul>
                {bulletPoints.map(b => (<li>{b}</li>))}
            </ul>
        </div>);
};

