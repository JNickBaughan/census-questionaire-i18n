import React from "react";
import ReactDOM from "react-dom";
import '../app.css';
import { InformationCard  } from "./components/Info-Card";
import { QuestionWithTextInput } from "./components/Question-With-Text-Input";
import { QuestionWithMultiChoice } from "./components/Question-With-Multi-Choice";

const App = () => (<div className="main-container">
	<InformationCard headerText={"Before you answer Question 1, count the people living in this house, apartment, or mobile home using our guidelines."} 
		bulletPoints={["Count all people including babies, who live and sleep here most of the time.", 
			"If no one lives and sleeps at this address most of the time, go online at my2020census.gov or call (555) 555-5555."
		]} />
	<InformationCard headerText={"The census must also include people without a permanent place to live, so:"} 
		bulletPoints={["If someone who does not have a permanent place to live is staying here on April 1, 2020 count that person"
		]} />

	<InformationCard headerText={"The Census Bureau also conducts counts in institutions and other places, so:"} 
			bulletPoints={["Do not coin a nursing home, jail, prison, detention facility, etc, on April 1, 2020.",
				"Leave these people off your questionnaire, even if they will return to live after they leave college, the nursing home, the military, jail, etc. Otherwise, they may be counted twice."
			]} />

	<QuestionWithTextInput question="How many people were living or staying in this house, apartment, or mobile home on April 1, 2020?" />
	<QuestionWithMultiChoice question="Were there any additional people staying here on April 1, 2020 that you did not include in Question 1?" answerOptions={["children", "grandchildren", "people staying here temporarily"]} />
	<QuestionWithTextInput question="What is your telephone number?" />
	
</div>);

ReactDOM.render(<App />, document.getElementById("root"));
