import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      result: 0,
      num1: "",
      num2: ""
    };
    this.setNum1 = this.setNum1.bind(this);
  }

  setNum1(e) {
    const num1 = e.target.value;
    this.setSTate({ num1 });
  }

  render(){
    return (
      <div>
        <h1>{this.state.result}</h1>
        <label>Num1:
        <br/>
        <input value={this.state.num1}/>
        </label>
        <br/>
        <label>Num2:
          <br/>
          <input value={this.state.num2}/>
        </label>
      </div>
    );
  }
}

export default Calculator;
